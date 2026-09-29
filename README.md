<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="Gertrude Munyao is a Nairobi-based data scientist working across machine learning, actuarial analysis, forecasting, and business intelligence.">
  <title>Gertrude Munyao | Data Scientist</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,500;9..144,600&family=Inter:wght@400;500;600&family=IBM+Plex+Mono:wght@500&display=swap" rel="stylesheet">

  <style>
    :root {
      --ink: #101b2d;
      --panel: #152238;
      --paper: #f2efe6;
      --muted: #bdc5cb;
      --line: #344457;
      --gold: #d8b63f;
      --coral: #e07151;
      --mint: #75cbb3;
      --content-width: 1160px;
    }

    * {
      box-sizing: border-box;
    }

    html {
      scroll-behavior: smooth;
      scroll-padding-top: 88px;
    }

    body {
      margin: 0;
      background: var(--ink);
      color: var(--paper);
      font-family: "Inter", sans-serif;
      line-height: 1.6;
    }

    a {
      color: var(--gold);
      text-decoration: none;
    }

    a:hover {
      text-decoration: underline;
      text-underline-offset: 4px;
    }

    a:focus-visible {
      outline: 2px solid var(--mint);
      outline-offset: 4px;
    }

    h1,
    h2,
    h3 {
      margin: 0 0 0.55em;
      font-family: "Fraunces", Georgia, serif;
      font-weight: 500;
      line-height: 1.15;
    }

    p {
      margin: 0 0 1em;
    }

    .mono {
      font-family: "IBM Plex Mono", monospace;
    }

    .wrap {
      width: 100%;
      margin-inline: auto;
      padding-inline: clamp(16px, 4vw, 48px);
    }

    .skip-link {
      position: absolute;
      top: 8px;
      left: 8px;
      z-index: 20;
      transform: translateY(-150%);
      padding: 10px 14px;
      background: var(--paper);
      color: var(--ink);
    }

    .skip-link:focus {
      transform: translateY(0);
    }

    .eyebrow {
      color: var(--gold);
      font-size: 0.82rem;
      font-weight: 600;
      letter-spacing: 0.08em;
      text-transform: uppercase;
    }

    .muted {
      color: var(--muted);
    }

    nav {
      position: sticky;
      top: 0;
      z-index: 10;
      border-bottom: 1px solid var(--line);
      background: rgb(16 27 45 / 94%);
      backdrop-filter: blur(10px);
    }

    nav .wrap {
      display: flex;
      min-height: 68px;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
    }

    .brand {
      color: var(--paper);
      font-family: "Fraunces", Georgia, serif;
      font-size: 1.15rem;
    }

    .nav-links {
      display: flex;
      flex-wrap: wrap;
      gap: 24px;
      font-size: 0.9rem;
    }

    .nav-links a {
      color: var(--muted);
    }

    .nav-links a:hover {
      color: var(--paper);
      text-decoration: none;
    }

    .hero {
      padding-block: clamp(64px, 10vw, 112px) 80px;
      background-image:
        linear-gradient(rgb(117 203 179 / 4%) 1px, transparent 1px),
        linear-gradient(90deg, rgb(117 203 179 / 4%) 1px, transparent 1px);
      background-size: 36px 36px;
    }

    .hero-grid {
      display: grid;
      grid-template-columns: minmax(0, 1.2fr) minmax(260px, 0.8fr);
      align-items: center;
      gap: clamp(32px, 7vw, 88px);
    }

    .hero h1 {
      max-width: none;
      white-space: nowrap;
    }

    .hero-copy {
      max-width: 62ch;
      color: var(--muted);
      font-size: 1.05rem;
    }

    .hero-copy strong {
      color: var(--paper);
      font-weight: 500;
    }

    .hero-actions {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
      margin-top: 28px;
    }

    .button {
      display: inline-flex;
      min-height: 44px;
      align-items: center;
      justify-content: center;
      padding: 10px 16px;
      border: 1px solid var(--gold);
      color: var(--paper);
      font-size: 0.9rem;
      font-weight: 600;
    }

    .button.primary {
      background: var(--gold);
      color: var(--ink);
    }

    .button:hover {
      text-decoration: none;
      filter: brightness(1.08);
    }

    .impact {
      padding: 24px;
      border-top: 3px solid var(--coral);
      background: var(--panel);
    }

    .impact h2 {
      margin-bottom: 20px;
      font-size: 1.25rem;
    }

    .impact-item {
      padding-block: 14px;
      border-top: 1px solid var(--line);
    }

    .impact-item .mono {
      display: block;
      color: var(--mint);
      font-size: 1.35rem;
    }

    .impact-item p {
      margin: 4px 0 0;
      color: var(--muted);
      font-size: 0.84rem;
    }

    section.content-section {
      padding-block: 76px;
      border-top: 1px solid var(--line);
    }

    .section-heading {
      display: flex;
      flex-wrap: wrap;
      align-items: end;
      justify-content: space-between;
      gap: 20px;
      margin-bottom: 32px;
    }

    .section-heading h2 {
      margin: 8px 0 0;
      font-size: 2rem;
    }

    .section-heading p {
      max-width: 56ch;
      margin: 0;
      color: var(--muted);
    }

    .project-grid {
      display: grid;
      grid-template-columns: repeat(3, minmax(0, 1fr));
      gap: 16px;
    }

    .project-card {
      display: flex;
      min-width: 0;
      flex-direction: column;
      padding: 22px;
      border: 1px solid var(--line);
      background: var(--panel);
    }

    .project-card h3 {
      margin: 12px 0 8px;
      font-size: 1.2rem;
    }

    .project-card p {
      flex: 1;
      color: var(--muted);
      font-size: 0.9rem;
    }

    .project-type {
      color: var(--mint);
      font-size: 0.73rem;
      font-weight: 600;
      letter-spacing: 0.07em;
      text-transform: uppercase;
    }

    .project-links {
      display: flex;
      flex-wrap: wrap;
      gap: 14px;
      padding-top: 14px;
      border-top: 1px solid var(--line);
      font-size: 0.84rem;
      font-weight: 600;
    }

    .case-list {
      display: grid;
      gap: 0;
    }

    .case-study {
      display: grid;
      grid-template-columns: minmax(180px, 0.65fr) minmax(0, 1.35fr);
      gap: 32px;
      padding-block: 30px;
      border-top: 1px solid var(--line);
      scroll-margin-top: 88px;
    }

    .case-study h3 {
      margin: 8px 0;
      font-size: 1.35rem;
    }

    .case-study p {
      max-width: 70ch;
      margin-bottom: 12px;
      color: var(--muted);
    }

    .case-study .back-link {
      display: inline-block;
      margin-top: 4px;
      font-size: 0.85rem;
    }

    .about-grid {
      display: grid;
      grid-template-columns: minmax(0, 1.2fr) minmax(220px, 0.8fr);
      gap: 40px;
    }

    .about-copy {
      max-width: 68ch;
      color: var(--muted);
    }

    .about-copy strong {
      color: var(--paper);
      font-weight: 500;
    }

    .skills-list {
      display: grid;
      gap: 18px;
    }

    .skill-group {
      padding-top: 12px;
      border-top: 1px solid var(--line);
    }

    .skill-group h3 {
      margin-bottom: 6px;
      color: var(--gold);
      font-family: "Inter", sans-serif;
      font-size: 0.9rem;
      font-weight: 600;
    }

    .skill-group p {
      margin: 0;
      color: var(--muted);
      font-size: 0.88rem;
    }

    footer {
      padding-block: 44px;
      border-top: 1px solid var(--line);
      background: var(--panel);
    }

    .footer-content {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
    }

    .footer-content p {
      margin: 0;
      color: var(--muted);
    }

    .footer-links {
      display: flex;
      flex-wrap: wrap;
      gap: 18px;
    }

    @media (max-width: 900px) {
      .project-grid {
        grid-template-columns: repeat(2, minmax(0, 1fr));
      }

      .hero-grid,
      .about-grid {
        grid-template-columns: 1fr;
      }

      .impact {
        max-width: 620px;
      }
    }

    @media (max-width: 600px) {
      nav .wrap {
        align-items: flex-start;
        flex-direction: column;
        justify-content: center;
        gap: 8px;
        padding-block: 12px;
      }

      .nav-links {
        gap: 16px;
        font-size: 0.84rem;
      }

      .project-grid {
        grid-template-columns: 1fr;
      }

      .case-study {
        grid-template-columns: 1fr;
        gap: 8px;
      }

      section.content-section {
        padding-block: 56px;
      }

      .hero {
        padding-top: 56px;
      }

      .hero h1 {
        font-size: 1.75rem;
      }
    }

    @media (prefers-reduced-motion: no-preference) {
      .hero-grid {
        animation: enter 600ms ease-out both;
      }

      @keyframes enter {
        from {
          opacity: 0;
          transform: translateY(12px);
        }
        to {
          opacity: 1;
          transform: translateY(0);
        }
      }
    }
  </style>
</head>

<body>
  <a class="skip-link" href="#main">Skip to content</a>

  <nav aria-label="Main navigation">
    <div class="wrap">
      <a class="brand" href="#top">Gertrude Munyao</a>
      <p class="eyebrow">Data Scientist · AI/ML · Nairobi, Kenya</p>
      <div class="nav-links">
        <a href="#work">Projects</a>
        <a href="#about">About</a>
        <a href="#contact">Contact</a>
      </div>
    </div>
  </nav>

  <main id="main">
    <header class="hero" id="top">
      <div class="wrap hero-grid">
        <div>
          <h1>Gertrude Munyao</h1>
          <p class="hero-copy">
            I turn complex data into practical decisions. With <strong>7+ years
            across data science, actuarial analysis, and business intelligence</strong>,
            I build predictive models, forecasts, analytical tools, and dashboards
            that help teams act with confidence.
          </p>
          <p class="hero-copy">
            My work spans Python, SQL, and R, from data preparation and model
            validation to communicating findings clearly to non-technical teams.
          </p>
          <div class="hero-actions">
            <a class="button primary" href="#work">Explore projects</a>
            <a class="button" href="mailto:gertrudemunyao@gmail.com">Get in touch</a>
          </div>
        </div>

        <aside class="impact" aria-label="Selected work outcomes">
          <h2>Selected outcomes</h2>
          <div class="impact-item">
            <span class="mono">8%</span>
            <p>growth in campaign-attributed revenue through targeted campaigns</p>
          </div>
          <div class="impact-item">
            <span class="mono">200+</span>
            <p>teams covered by a real-time football match prediction app</p>
          </div>
          <div class="impact-item">
            <span class="mono">15+</span>
            <p>group insurance claims processed weekly with actuarial data models</p>
          </div>
        </aside>
      </div>
    </header>

    <section class="content-section" id="work">
      <div class="wrap">
        <div class="section-heading">
          <div>
            <p class="eyebrow">Selected work</p>
            <h2>Projects</h2>
          </div>
          <p>
            Applied projects across healthcare, actuarial analysis, machine
            learning, and forecasting. Each project links to its case study and
            source repository.
          </p>
        </div>

        <div class="project-grid">
          <article class="project-card">
            <span class="project-type">Healthcare · Python</span>
            <h3>Mapping healthcare access gaps</h3>
            <p>
              Compared Nairobi sub-counties on facility access, bed availability,
              and selected health services against population and target ratios.
            </p>
            <div class="project-links">
              <a href="https://munyaog.github.io/projects/nairobi-healthcare-access/">Case study</a>
              <a href="https://github.com/MunyaoG/healthcare-gaps-analysis-python">GitHub repo</a>
            </div>
          </article>

          <article class="project-card">
            <span class="project-type">Actuarial · Python</span>
            <h3>Claims reserving with chain ladder</h3>
            <p>
              Built a claims development triangle, calculated loss development
              factors, and projected ultimate losses from payment data.
            </p>
            <div class="project-links">
              <a href="#case-chain-ladder-python">Case study</a>
              <a href="https://github.com/MunyaoG/liability-projection-in-python">GitHub repo</a>
            </div>
          </article>

          <article class="project-card">
            <span class="project-type">Mobility · Time series</span>
            <h3>EV battery performance analysis</h3>
            <p>
              Analyzed motorcycle battery swap and telemetry data to identify
              degradation patterns and forecast fleet usage.
            </p>
            <div class="project-links">
              <a href="#case-ev-batteries">Case study</a>
              <a href="https://github.com/MunyaoG/EV-Motorcycles-Battery-Data-Analysis">GitHub repo</a>
            </div>
          </article>

          <article class="project-card">
            <span class="project-type">Forecasting · Python</span>
            <h3>Football match outcome predictor</h3>
            <p>
              Created a web app that uses recency-weighted historical performance
              to estimate outcomes across leagues and teams.
            </p>
            <div class="project-links">
              <a href="#case-football">Case study</a>
              <a href="https://github.com/MunyaoG/sports-match-outcome-prediction">GitHub repo</a>
            </div>
          </article>

          <article class="project-card">
            <span class="project-type">Machine learning · Python</span>
            <h3>Fraud transaction detection</h3>
            <p>
              Prepared highly imbalanced transaction data and evaluated a
              Random Forest approach to detecting potential fraud.
            </p>
            <div class="project-links">
              <a href="#case-fraud">Case study</a>
              <a href="https://github.com/MunyaoG/complex-data-manipulation-model-fitting-and-evaluation">GitHub repo</a>
            </div>
          </article>

          <article class="project-card">
            <span class="project-type">NLP · Python</span>
            <h3>Movie review sentiment analysis</h3>
            <p>
              Compared text classification methods on IMDB reviews using TF-IDF
              features and standard classification metrics.
            </p>
            <div class="project-links">
              <a href="#case-sentiment">Case study</a>
              <a href="https://github.com/MunyaoG/nlp-classification-models">GitHub repo</a>
            </div>
          </article>

          <article class="project-card">
            <span class="project-type">Regression · Python</span>
            <h3>House price prediction</h3>
            <p>
              Compared linear and tree-based regression models on structural and
              location features to predict house prices.
            </p>
            <div class="project-links">
              <a href="#case-house-prices">Case study</a>
              <a href="https://github.com/MunyaoG/regression-models">GitHub repo</a>
            </div>
          </article>

          <article class="project-card">
            <span class="project-type">Classification · Python</span>
            <h3>Iris flower classification</h3>
            <p>
              Compared Decision Tree, Logistic Regression, and SVM models, then
              checked whether tuning improved generalization.
            </p>
            <div class="project-links">
              <a href="#case-iris">Case study</a>
              <a href="https://github.com/MunyaoG/classification-models">GitHub repo</a>
            </div>
          </article>

          <article class="project-card">
            <span class="project-type">Actuarial · R</span>
            <h3>Claims reserving in R</h3>
            <p>
              Implemented the chain ladder reserving approach in R as a companion
              to the Python project.
            </p>
            <div class="project-links">
              <a href="#case-chain-ladder-r">Case study</a>
              <a href="https://github.com/MunyaoG/liability-projection-in-R">GitHub repo</a>
            </div>
          </article>
        </div>
      </div>
    </section>

    <section class="content-section" aria-labelledby="case-studies-title">
      <div class="wrap">
        <div class="section-heading">
          <div>
            <p class="eyebrow">Methods and context</p>
            <h2 id="case-studies-title">Project case studies</h2>
          </div>
          <p>
            A closer look at the questions, methods, and practical takeaways
            behind selected projects.
          </p>
        </div>

        <div class="case-list">
          <article class="case-study" id="case-chain-ladder-python">
            <div>
              <p class="eyebrow">Actuarial · Python</p>
              <h3>Claims reserving with chain ladder</h3>
            </div>
            <div>
              <p>
                This project estimates future claim liabilities from historical
                payment development. It builds a development triangle from raw
                payment data, derives loss development factors, and applies the
                chain ladder method to project ultimate losses.
              </p>
              <p>
                The calculations include reconciliation checks against the source
                payment data before projections are made.
              </p>
              <a class="back-link" href="#work">Back to projects ↑</a>
            </div>
          </article>

          <article class="case-study" id="case-ev-batteries">
            <div>
              <p class="eyebrow">Mobility · Python</p>
              <h3>EV battery performance analysis</h3>
            </div>
            <div>
              <p>
                This analysis uses battery swap and telemetry data to investigate
                changes in battery performance across an electric motorcycle
                fleet. Regression analysis examined factors associated with lower
                usage, including charged capacity, alarm flags, and maximum
                charge current.
              </p>
              <p>
                The project also applies time-series forecasting to estimate
                future fleet usage and help translate data patterns into
                maintenance questions.
              </p>
              <a class="back-link" href="#work">Back to projects ↑</a>
            </div>
          </article>

          <article class="case-study" id="case-football">
            <div>
              <p class="eyebrow">Forecasting · Python</p>
              <h3>Football match outcome predictor</h3>
            </div>
            <div>
              <p>
                A small web app calculates match outcome probabilities from
                historical home and away performance. Recency-weighted statistics
                give more influence to recent matches than older results.
              </p>
              <p>
                The app covers more than 200 teams across 11 leagues and connects
                the analysis to an interactive way to explore predictions.
              </p>
              <a class="back-link" href="#work">Back to projects ↑</a>
            </div>
          </article>

          <article class="case-study" id="case-fraud">
            <div>
              <p class="eyebrow">Machine learning · Python</p>
              <h3>Fraud transaction detection</h3>
            </div>
            <div>
              <p>
                With fraud representing a very small share of transactions, this
                project focuses on data preparation and evaluation for an
                imbalanced classification problem. Balanced training samples and
                repeated resampling help compare model performance more carefully
                than accuracy alone.
              </p>
              <p>
                A Random Forest is evaluated across five resamples to examine how
                consistently it identifies potential fraudulent transactions.
              </p>
              <a class="back-link" href="#work">Back to projects ↑</a>
            </div>
          </article>

          <article class="case-study" id="case-sentiment">
            <div>
              <p class="eyebrow">NLP · Python</p>
              <h3>Movie review sentiment analysis</h3>
            </div>
            <div>
              <p>
                This project classifies IMDB movie reviews as positive or
                negative. It transforms review text into TF-IDF features and
                compares Logistic Regression with Complement Naive Bayes.
              </p>
              <p>
                Precision, recall, and F1 provide a more useful view of
                classification performance than accuracy by itself.
              </p>
              <a class="back-link" href="#work">Back to projects ↑</a>
            </div>
          </article>

          <article class="case-study" id="case-house-prices">
            <div>
              <p class="eyebrow">Regression · Python</p>
              <h3>House price prediction</h3>
            </div>
            <div>
              <p>
                This project compares Linear Regression, Gradient Boosting, and
                Random Forest models using housing features that describe
                properties and their locations. The comparison tests whether
                greater model complexity improves predictions on this dataset.
              </p>
              <a class="back-link" href="#work">Back to projects ↑</a>
            </div>
          </article>

          <article class="case-study" id="case-iris">
            <div>
              <p class="eyebrow">Classification · Python</p>
              <h3>Iris flower classification</h3>
            </div>
            <div>
              <p>
                Decision Tree, Logistic Regression, and SVM models are compared
                on the Iris dataset. A tuning pass checks whether a more complex
                configuration improves results over a simpler model.
              </p>
              <a class="back-link" href="#work">Back to projects ↑</a>
            </div>
          </article>

          <article class="case-study" id="case-chain-ladder-r">
            <div>
              <p class="eyebrow">Actuarial · R</p>
              <h3>Claims reserving in R</h3>
            </div>
            <div>
              <p>
                The R implementation applies the same chain ladder reserving
                method to claims development data. It provides a companion
                implementation to compare with the Python version.
              </p>
              <a class="back-link" href="#work">Back to projects ↑</a>
            </div>
          </article>
        </div>
      </div>
    </section>
    
  </main>

  <footer id="contact">
    <div class="wrap footer-content">
      <p>Based in Nairobi, Kenya. Available for data science and analytics work.</p>
      <div class="footer-links">
        <a href="mailto:gertrudemunyao@gmail.com">Email</a>
        <a href="https://github.com/MunyaoG" target="_blank" rel="noopener noreferrer">GitHub</a>
      </div>
    </div>
  </footer>
</body>
</html>
