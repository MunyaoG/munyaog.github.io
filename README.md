<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gertrude — Data Scientist, Nairobi</title>
    <meta name="description" content="Freelance data scientist in Nairobi. Actuarial reserving, forecasting, and applied machine learning.">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600&family=Inter:wght@400;500;600&family=IBM+Plex+Mono:wght@500&display=swap" rel="stylesheet">
    <style>
      :root{
        --ink:#101B2D;
        --ink-2:#152238;
        --paper:#EFEAE0;
        --paper-dim:#B9BEC4;
        --line:#2A3A4D;
        --brass:#C9A227;
        --rust:#B6553A;
      }
      *{box-sizing:border-box;}
      html{scroll-behavior:smooth;}
      body{
        margin:0;
        background:var(--ink);
        color:var(--paper);
        font-family:'Inter',system-ui,sans-serif;
        line-height:1.55;
      }
      h1,h2,h3{
        font-family:'Fraunces',serif;
        font-weight:500;
        margin:0 0 0.4em;
        letter-spacing:-0.01em;
      }
      .num{font-family:'IBM Plex Mono',monospace;}
      a{color:var(--brass);text-decoration:none;}
      a:hover{text-decoration:underline;}
      .wrap{max-width:980px;margin:0 auto;padding:0 24px;}
      section{padding:88px 0;}

  /* NAV */
  nav{
    position:sticky;top:0;z-index:10;
    background:rgba(16,27,45,0.92);
    backdrop-filter:blur(6px);
    border-bottom:1px solid var(--line);
  }
  nav .wrap{
    display:flex;justify-content:space-between;align-items:center;
    padding-top:16px;padding-bottom:16px;
  }
  nav .brand{font-family:'Fraunces',serif;font-size:1.05rem;color:var(--paper);}
  nav .links{display:flex;gap:28px;font-size:0.9rem;}
  nav .links a{color:var(--paper-dim);}
  nav .links a:hover{color:var(--paper);text-decoration:none;}

  /* HERO */
  .hero{padding-top:72px;padding-bottom:72px;}
  .hero-grid{
    display:grid;
    grid-template-columns:1.2fr 1fr;
    gap:56px;
    align-items:center;
  }
  .hero h1{font-size:2.5rem;line-height:1.15;max-width:14ch;}
  .hero p{color:var(--paper-dim);max-width:46ch;font-size:1.05rem;}
  .hero .role{
    color:var(--brass);font-size:0.95rem;margin-bottom:18px;
  }
  .stack-list{
    margin-top:28px;font-size:0.9rem;color:var(--paper-dim);
  }
  .stack-list span{color:var(--paper);}

  /* TRIANGLE GRAPHIC */
  .tri-card{
    border:1px solid var(--line);
    border-radius:4px;
    padding:24px;
    background:var(--ink-2);
  }
  .tri-grid{
    display:grid;
    grid-template-columns:repeat(7,1fr);
    gap:3px;
    margin-bottom:20px;
  }
  .tri-cell{
    aspect-ratio:1;
    border-radius:2px;
    background:var(--line);
  }
  .tri-stat{border-bottom:1px dashed var(--line);padding-bottom:16px;margin-bottom:14px;}
  .tri-stat .num{font-size:2rem;color:var(--paper);display:block;}
  .tri-stat .cap{color:var(--paper-dim);font-size:0.85rem;}
  .tri-caption{font-size:0.8rem;color:var(--paper-dim);}
  .tri-caption strong{color:var(--paper);font-weight:500;}

  /* SECTION HEADS */
  .section-head{margin-bottom:40px;}
  .section-head h2{font-size:1.6rem;}
  .section-head p{color:var(--paper-dim);max-width:56ch;margin:0;}

  /* FEATURED CARDS */
  .feature{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:40px;
    border:1px solid var(--line);
    border-radius:4px;
    padding:36px;
    margin-bottom:24px;
  }
  .feature h3{font-size:1.3rem;}
  .feature .tag-row{margin-bottom:14px;}
  .feature p{color:var(--paper-dim);margin:0 0 14px;}
  .feature-stats{display:flex;gap:28px;margin-top:18px;flex-wrap:wrap;}
  .feature-stats div{border-top:1px solid var(--line);padding-top:8px;min-width:110px;}
  .feature-stats .num{color:var(--brass);font-size:1.15rem;display:block;}
  .feature-stats .cap{color:var(--paper-dim);font-size:0.78rem;}
  .tag{
    display:inline-block;font-size:0.75rem;color:var(--paper-dim);
    border:1px solid var(--line);border-radius:3px;
    padding:3px 8px;margin:0 6px 6px 0;
  }
  .repo-link{font-size:0.9rem;}

  /* GRID OF OTHER PROJECTS */
  .grid{
    display:grid;
    grid-template-columns:repeat(2,1fr);
    gap:20px;
  }
  .card{
    border:1px solid var(--line);
    border-radius:4px;
    padding:24px;
  }
  .card h3{font-size:1.05rem;margin-bottom:8px;}
  .card p{color:var(--paper-dim);font-size:0.92rem;margin:0 0 14px;}
  .card .repo-link{font-size:0.85rem;}

  /* SKILLS */
  .skills{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:28px;
  }
  .skills h3{font-size:0.95rem;color:var(--brass);margin-bottom:10px;font-weight:500;}
  .skills p{color:var(--paper-dim);margin:0;font-size:0.92rem;}

  footer{
    border-top:1px solid var(--line);
    padding:48px 0;
    color:var(--paper-dim);
    font-size:0.9rem;
  }
  footer a{color:var(--paper);}

  @media (max-width:760px){
    .hero-grid{grid-template-columns:1fr;}
    .feature{grid-template-columns:1fr;}
    .grid{grid-template-columns:1fr;}
    .skills{grid-template-columns:1fr;}
    .hero h1{font-size:2rem;}
    section{padding:56px 0;}
  }
</style>
</head>
<body>

<nav>
  <div class="wrap">
    <span class="brand">Gertrude</span>
    <div class="links">
      <a href="#work">Work</a>
      <a href="#stack">Stack</a>
      <a href="#contact">Contact</a>
    </div>
  </div>
</nav>

<section class="hero">
  <div class="wrap hero-grid">
    <div>
      <div class="role">Freelance Data Scientist · Nairobi</div>
      <h1>Turning messy data into numbers people can act on.</h1>
      <p>Six years across data science, actuarial work, and business intelligence — including roles at Pula Advisors, Lepton Actuarial &amp; Consulting, UAP Old Mutual, InfoTrak Research, and Bolt. I build models that hold up outside the notebook: reserving triangles, fraud detection, demand forecasting, and the pipelines behind them.</p>
      <div class="stack-list">Working stack: <span>Python</span>, <span>SQL</span>, <span>Power BI</span>, <span>Tableau</span>, <span>PyTorch</span>, <span>BigQuery</span></div>
    </div>
    <div class="tri-card">
      <div class="tri-grid" id="triGrid"></div>
      <div class="tri-stat">
        <span class="num">$19.99M</span>
        <span class="cap">projected reserve — chain ladder model, 1,342 claims</span>
      </div>
      <div class="tri-caption">A claims development triangle, built from scratch in Python. <strong>See the full breakdown below.</strong></div>
    </div>
  </div>
</section>

<section id="work">
  <div class="wrap">
    <div class="section-head">
      <h2>Featured work</h2>
      <p>Two projects that go past the standard tutorial dataset — one from actuarial reserving, one from operational telemetry.</p>
    </div>

    <div class="feature">
      <div>
        <div class="tag-row">
          <span class="tag">Python</span><span class="tag">pandas</span><span class="tag">actuarial</span>
        </div>
        <h3>Claims reserving with the chain ladder method</h3>
        <p>A from-scratch implementation of chain ladder reserving — no actuarial library shortcuts. Builds a claims development triangle from raw payment data, derives loss development factors, and projects ultimate losses.</p>
        <p><a class="repo-link" href="https://github.com/MunyaoG/liability-projection-in-python">View repository →</a></p>
      </div>
      <div>
        <p>Every step is self-checked: triangle totals are reconciled against the raw data two independent ways before any projection runs.</p>
        <div class="feature-stats">
          <div><span class="num">10×10</span><span class="cap">development triangle</span></div>
          <div><span class="num">9</span><span class="cap">years forecast, discounted</span></div>
          <div><span class="num">4%</span><span class="cap">discount rate applied</span></div>
        </div>
      </div>
    </div>

    <div class="feature">
      <div>
        <div class="tag-row">
          <span class="tag">Python</span><span class="tag">regression</span><span class="tag">time series</span>
        </div>
        <h3>Flagging failing EV batteries before they fail</h3>
        <p>Analyzed swap and telemetry data from an EV motorcycle fleet to catch batteries degrading faster than normal — then modeled what drives that decline and forecast fleet-wide usage ten months out.</p>
        <p><a class="repo-link" href="https://github.com/MunyaoG/EV-Motorcycles-Battery-Data-Analysis">View repository →</a></p>
      </div>
      <div>
        <p>Regression tied low usage to charged capacity, alarm flags, and max charge current — turning a statistical flag into a maintenance action.</p>
        <div class="feature-stats">
          <div><span class="num">97</span><span class="cap">batteries flagged</span></div>
          <div><span class="num">1.35</span><span class="cap">regression MSE</span></div>
          <div><span class="num">4.34</span><span class="cap">ARIMA forecast MAE</span></div>
        </div>
      </div>
    </div>
  </div>
</section>

<section>
  <div class="wrap">
    <div class="section-head">
      <h2>More projects</h2>
      <p>Smaller, focused pieces — each built to compare methods honestly rather than just report one score.</p>
    </div>
    <div class="grid">

      <div class="card">
        <h3>Fraud transaction detection</h3>
        <p>Cleaned a 24-million-row transaction dataset with under 0.2% fraud, built balanced training samples, and evaluated a Random Forest across five resamples.</p>
        <a class="repo-link" href="https://github.com/MunyaoG/complex-data-manipulation-model-fitting-and-evaluation">View repository →</a>
      </div>

      <div class="card">
        <h3>Iris flower classification</h3>
        <p>Decision Tree, Logistic Regression, and SVM compared head-to-head, plus a tuning pass that confirmed the simpler model already generalized best.</p>
        <a class="repo-link" href="https://github.com/MunyaoG/classification-models">View repository →</a>
      </div>

      <div class="card">
        <h3>House price prediction</h3>
        <p>Linear Regression, Gradient Boosting, and Random Forest tested against each other on structural and location features — the linear model won.</p>
        <a class="repo-link" href="https://github.com/MunyaoG/regression-models">View repository →</a>
      </div>

      <div class="card">
        <h3>Movie review sentiment analysis</h3>
        <p>TF-IDF features feeding Logistic Regression and Complement Naive Bayes across 50,000 IMDB reviews, scored on precision, recall, and F1.</p>
        <a class="repo-link" href="https://github.com/MunyaoG/nlp-classification-models">View repository →</a>
      </div>

      <div class="card">
        <h3>Football match outcome predictor</h3>
        <p>A recency-weighted home/away statistics engine over eight seasons of match data, wrapped in a small Gradio app for quick lookups.</p>
        <a class="repo-link" href="https://github.com/MunyaoG/sports-match-outcome-prediction">View repository →</a>
      </div>

      <div class="card">
        <h3>Claims reserving in R</h3>
        <p>The companion R implementation of the chain ladder model — same triangle logic, same reserving method, built before the Python port above.</p>
        <a class="repo-link" href="https://github.com/MunyaoG/liability-projection-in-R">View repository →</a>
      </div>

    </div>
  </div>
</section>

<section id="stack">
  <div class="wrap">
    <div class="section-head">
      <h2>Tools I work in</h2>
    </div>
    <div class="skills">
      <div>
        <h3>Languages &amp; analysis</h3>
        <p>Python, SQL, R</p>
      </div>
      <div>
        <h3>Modeling</h3>
        <p>scikit-learn, PyTorch, statsmodels, agent evaluation frameworks</p>
      </div>
      <div>
        <h3>BI &amp; data platforms</h3>
        <p>Power BI, Tableau, BigQuery, Looker, Git</p>
      </div>
    </div>
  </div>
</section>

<footer id="contact">
  <div class="wrap">
    <p>Based in Nairobi, working with teams anywhere. Reach me via <a href="https://github.com/MunyaoG">GitHub</a> or add your email/LinkedIn link here.</p>
  </div>
</footer>

<script>
  // Draw a small loss-triangle motif: filled upper-left, empty lower-right,
  // shading intensity fading down each column to suggest development decay.
  const grid = document.getElementById('triGrid');
  const size = 7;
  for (let row = 0; row < size; row++) {
    for (let col = 0; col < size; col++) {
      const cell = document.createElement('div');
      cell.className = 'tri-cell';
      if (row + col < size - 1) {
        const depth = row / size;
        const opacity = 0.85 - depth * 0.55;
        cell.style.background = `rgba(201,162,39,${opacity.toFixed(2)})`;
      } else if (row + col === size - 1) {
        cell.style.background = 'var(--rust)';
      } else {
        cell.style.background = 'transparent';
        cell.style.border = '1px dashed var(--line)';
      }
      grid.appendChild(cell);
    }
  }
</script>

</body>
</html>
