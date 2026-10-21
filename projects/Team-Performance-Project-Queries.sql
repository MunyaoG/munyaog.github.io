use gmdb;

-- Data cleaning: There are cases where handling_time_end < handling_time_start
-- Reason: End-of-day entries carried an incorrect date. Adjusted 'handling_time_end' to next day if it was earlier than start.

alter table operations
add handling_time_end_modified datetime2;

update operations
set handling_time_end_modified = 
	case when handling_time_end < handling_time_start
		then dateadd(dd, 1, left(handling_time_end, 23))
		else left(handling_time_end, 23)
	end;


-- =================================================================================================================================

-- 1. OPERATIONAL HEALTH
-- 1.1 Backlog Age
with backlog as (
select case_id,
	datediff(ss, case_created_time, min(case_backlog_entry_time)) backlog_age
from operations
group by case_id, case_created_time)
select round(1.0 * sum(backlog_age) / count(backlog_age), 0) avg_backlog_age_sec from backlog;
-- Result: average backlog age: 45 seconds

-- 1.2 Time to first review
select avg(hr_to_first_review) avg_hr_to_first_review from
 (select datediff(hh, case_backlog_entry_time, handling_time_start) hr_to_first_review
	from operations) sub;
-- 18 hours from case_backlog_entry_time to handling_time_start. Delay in this can destroy "instant" promise.

-- 1.3 Resolution time
select avg(resolution_time) resolution_time from
	(select max(datediff(hh, case_created_time,  handling_time_end_modified)) resolution_time
	from operations
	where final_state != 'WAITING'
	group by case_id) sub;
-- Result: 72 hours / 3 days resolution time from case_created_time to handling_time_end_modified

-- 1.4 Reopen rate - number of cases that have to go through more than 1 reviews
with r as(
select case_id, count(ops_decision) reopens
from operations
group by case_id)
select round(100.0 * count(case when reopens > 1 then case_id end) / count(case_id), 0) reopen_rate from r;
-- Reopen rate: 31%

-- 1.5 Overall average handling time in minutes
select avg(datediff(mi, handling_time_start, handling_time_end_modified)) avg_handling_time
from operations;
-- Result: 11 minutes

-- 1.6 Number of reviews per case
select round(1.0 * sum(reviews) / count(reviews), 1) from
	(select count(case_id) reviews from operations group by case_id) sub;
-- Result: Number of reviews per case: 1.5

-- 1.7 Final state distribution
with unique_cases as(
	select distinct case_id, final_state
	from operations)
select final_state,
	count(final_state) count,
	100.0 * count(final_state) / (select count(distinct case_id) from operations) percent_count
from unique_cases
group by final_state
order by count desc;
-- Plot this on a pie-chart.


-- 2. AGENT PERFORMANCE
-- 2.1 Average case throughput and review throughput per agent
select round(1.0 * count(distinct case_id) / count(distinct actor_id), 0) cases_per_agent,
	round(1.0 * count(review_id) / count(distinct actor_id), 0) reviews_per_agent
from operations;
-- Result: 228 average cases and 336 average reviews

-- 2.2 Longer table for each agent (monthly cases and reviews)
with monthly_tp as (
select actor_id,
	left(handling_time_start, 7) month,
	count(distinct case_id) case_tp,
	count(review_id) review_tp
from operations
group by actor_id, left(handling_time_start, 7))

select actor_id, avg(case_tp) avg_case_tp, avg(review_tp) avg_review_tp
from monthly_tp
group by actor_id
order by avg_review_tp desc, avg_case_tp desc;
-- Use this to plot histograms of monthly case and review throughput
-- If needed, the full table can go to the appendix

-- 2.3 Average Handling Time per Agent
select actor_id,
	avg(datediff(mi, handling_time_start, handling_time_end_modified)) avg_handling_time_mn
from operations
group by actor_id
order by avg_handling_time_mn desc;
-- Also plot a histogram, and add the full table in the appendix

-- 2.5 Outliers – agents with significantly longer handling times (using z-scores)
with avg_times as(
select actor_id,
	avg(datediff(mi, handling_time_start, handling_time_end_modified)) avg_handling_time_mn
from operations
group by actor_id),
z_scores as (
select actor_id,
	avg_handling_time_mn,
	round(
		(avg_handling_time_mn -
			(select avg(avg_handling_time_mn) from avg_times)) /
			(select stdev(avg_handling_time_mn) from avg_times), 2)
		z_score
from avg_times)
select actor_id, avg_handling_time_mn / 24 avg_handling_time_hr
from z_scores
where abs(z_score) >= 2;
-- Result: Three actors have significantly long handling time - over 90 hrs.
-- Recommendation: Re-training needed or investigate system latency.


-- 3. TRENDS
-- 3.1 Resolution rate and handling time over time
select left(handling_time_start, 7) month,
	count(distinct case_id) cases,
	count(distinct case when ops_decision != 'OPS_WAITING' then case_id end) resolved,
	round(
		100.0 *
			count(distinct case when ops_decision != 'OPS_WAITING' then case_id end) / 
			count(distinct case_id), 0) resolved_rate,
	avg(datediff(mi, handling_time_start, handling_time_end_modified)) avg_handling_time_mn
from operations
group by left(handling_time_start, 7)
order by month;
-- Plot this with a trend line
-- Observation: Handling time is increasing month-on-month (not good)

-- 3.2 Resolution time trend
with resol as (
	select case_created_time,
		max(handling_time_end_modified) resolve_time
	from operations
	where final_state != 'WAITING'
	group by case_id, case_created_time)
select left(case_created_time, 7) month,
	avg(datediff(hh, case_created_time, resolve_time)) resolution_time_hr
from resol
group by left(case_created_time, 7)
order by month;
-- Plot the graph with 


-- 4. EFFICIENCY
-- 4.1 Graph of number of reviews each case has gone through
select reviews no_of_reviews, count(reviews) cases_within_this_cat from
	(select count(case_id) reviews from operations group by case_id) sub
group by reviews
order by reviews;
-- Plot a horizontal bar chart

--4.2 Flag percentage of cases with 3 or more reviews
select 100.0 * count(case when reviews >= 3 then reviews end) / count(reviews) pct_cases_with_over_3reviews
from 
	(select count(case_id) reviews from operations group by case_id) sub;
-- Result: Approx. 10% of all cases have to go through 3+ reviews to resolve.


-- 4.3 Flag 6 cases that took over 200 hrs fromcreation to entering backlog
with backlog_entry as (
		select case_id, case_created_time, min(case_backlog_entry_time) first_backlog_entry_time
		from operations
		group by case_id, case_created_time),
	waiting_times as (
		select case_id, datediff(hh, case_created_time, first_backlog_entry_time) waiting_time_hrs
		from backlog_entry)
select * from waiting_times where waiting_time_hrs > 0
order by waiting_time_hrs desc;
-- Potential issue: investigate if there maybe a system malfunction/failure
-- Put the table of these in appendix

-- 5. ADDITIONAL INSIGHTS
-- 5.1 Agent-to-case ratio vs resolution rate over time
with resol as (
select left(handling_time_start, 7) month,
	count(distinct actor_id) agents,
	count(distinct case_id) cases,
	count(distinct case when ops_decision != 'ops_waiting' then case_id end) resolved
from operations
group by left(handling_time_start, 7))
select month,
	100.0 * resolved/cases resolve_rate,
	1. * agents/cases agt_case_ratio
from resol
order by month;
-- Plot a trend chart

-- 5.2 Ideal agent/cases ratio to achieve over 90% resolution rate
with resol as (
select left(handling_time_start, 7) month,
	count(distinct actor_id) agents,
	count(distinct case_id) cases,
	count(distinct case when ops_decision != 'ops_waiting' then case_id end) resolved
from operations
group by left(handling_time_start, 7)),
resolve_rates as (
select month,
	100.0 * resolved/cases resolve_rate,
	1. * agents/cases agt_case_ratio
from resol)
select avg(agt_case_ratio) ideal_ratio from resolve_rates where resolve_rate >= 90;
-- Result: ideal agent_case_rate = 1.34 ; we will have >90% cases closed




-- ====================================================================================================================



-- EXTRAS
-- Cases by case type
select case_type,
	count(distinct case_id) cases,
	avg(datediff(mi, handling_time_start, handling_time_end_modified)) avg_handling_time
from operations
group by case_type;

-- More stats by case type
with cte1 as (
		select case_id, case_type, case_created_time, max(handling_time_end_modified) handling_time_end, final_state
		from operations
		group by case_id, case_type, case_created_time, final_state),
	cte2 as (
		select case_type,
			avg(datediff(hh, case_created_time, handling_time_end)) resolve_time_hrs
		from cte1
		where final_state != 'WAITING'
		group by case_type),
	cte3 as (
		select distinct case_id, case_type, case_created_time, final_state
		from operations),
	cte4 as (
		select case_type, count(case_id) cases,
			count(case when final_state != 'WAITING' then final_state end) resolved,
			round(100.0 *
				count(case when final_state != 'WAITING' then final_state end) / 
				count(case_id), 2) resolve_rate
		from cte3
		group by case_type)

select * from cte2
join cte4 on cte2.case_type = cte4.case_type

