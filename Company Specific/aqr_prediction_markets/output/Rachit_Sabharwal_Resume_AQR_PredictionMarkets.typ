// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Rachit Sabharwal",
  title: "Rachit Sabharwal - CV",
  footer: context { [#emph[Rachit Sabharwal -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Apr 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.5in,
  page-bottom-margin: 0.5in,
  page-left-margin: 0.5in,
  page-right-margin: 0.5in,
  page-show-footer: true,
  page-show-top-note: false,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 0, 0),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "left",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "XCharter",
  typography-font-family-name: "XCharter",
  typography-font-family-headline: "XCharter",
  typography-font-family-connections: "XCharter",
  typography-font-family-section-titles: "XCharter",
  typography-font-size-body: 10pt,
  typography-font-size-name: 25pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 9pt,
  typography-font-size-section-titles: 1.3em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.5cm,
  header-space-below-headline: 0.5cm,
  header-space-below-connections: 0.5cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: false,
  header-connections-display-urls-instead-of-usernames: true,
  header-connections-separator: "•",
  header-connections-space-between-connections: 0.4cm,
  section-titles-type: "centered_with_centered_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.2cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1em,
  entries-date-and-location-width: 3.5cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 4,
    day: 20,
  ),
)


= Rachit Sabharwal

#connections(
  [Cypress, Texas],
  [#link("tel:+1-585-281-1928", icon: false, if-underline: false, if-color: false)[(585) 281-1928]],
  [#link("mailto:rachit-sabharwal@outlook.com", icon: false, if-underline: false, if-color: false)[rachit-sabharwal\@outlook.com]],
  [#link("https://github.com/rachitest", icon: false, if-underline: false, if-color: false)[github.com\/rachitest]],
)


== Professional Summary

Ph.D. candidate (expected Aug 2026) with 6+ years of end-to-end quantitative research across biotech, chemicals, and healthcare. Experienced in developing forecasting models, uncertainty-aware signals, and large-scale data pipelines. Owns the full research lifecycle, data ingestion and processing, exploratory analysis, methodology selection, prototyping, and out-of-sample evaluation. Seeking to apply rigorous statistical modeling and signal development to prediction-market research.

== Education

#education-entry(
  [
    #strong[The University of Texas Health Science Center at Houston], Epidemiology and Biostatistics

    - Focus: Explainable AI

    - Certificates: Advanced Data Science

  ],
  [
    Houston, TX

    Aug 2022 – Aug 2026

  ],
  degree-column: [
    #strong[Ph.D.]
  ],
)

#education-entry(
  [
    #strong[The University of California, Berkeley], Software Development and Programming

  ],
  [
    Berkeley, CA

    June 2023 – Apr 2025

  ],
  degree-column: [
    #strong[Cert.]
  ],
)

#education-entry(
  [
    #strong[The University of Texas Health Science Center at Houston], Biostatistics

  ],
  [
    Houston, TX

    Jan 2020 – May 2022

  ],
  degree-column: [
    #strong[M.S.]
  ],
)

#education-entry(
  [
    #strong[University of Rochester], Environmental Health

  ],
  [
    Rochester, NY

    Sept 2014 – May 2018

  ],
  degree-column: [
    #strong[B.S.]
  ],
)

== Experience

#regular-entry(
  [
    #strong[The University of Texas Health Science Center at Houston], Research Data Scientist, School of Public Health

    - Dissertation on explainable multimodal deep learning for severe TBI outcome prediction, running the full research process from a systematic review of methods, to time-series modeling on ICU signals benchmarked against classical-ML baselines, to a cross-sectional multimodal XAI model evaluated out-of-sample.

    - Led a team evaluating LLM feasibility for free-text physician-note classification in DETECT-RPC, informing the project's NLP pipeline design through a structured accuracy, latency, and cost analysis.

    - Built an agentic LLM pipeline (ellmer, Groq, DeepSeek R1 70B) that migrated the r4epi open textbook from R Markdown to Quarto, chaining file transfer, code reformatting, and grammar transformation.

    - Cut data-munging turnaround 24x by re-architecting the TexasCARES ETL pipelines; stood up CI\/CD automated reporting that ingests new data weekly, runs quality checks, and publishes stakeholder outputs without manual intervention.

    - Co-authored 4 peer-reviewed publications on SARS-CoV-2 vaccine non-response and pediatric COVID comorbidities using survival analysis, linear mixed models, and other statistical methods on population-based cohorts.

  ],
  [
    Houston, TX

    Feb 2020 – Aug 2026

  ],
)

#regular-entry(
  [
    #strong[The Dow Chemical Company], R&D Intern, Machine Learning, Optimization & Statistics (MiLOS), Core R&D

    - Benchmarked Bayesian models (Gaussian process regression, Bayesian neural networks, Monte Carlo dropout) against frequentist counterparts across 25+ measurement-error scenarios using uncertainty-quantification calibration metrics (PICP, ECE, CI width).

    - Authored an internal Bayesian UQ white paper (MiLOS) adopted as organizational guidance for future predictive modeling projects.

    - Shipped an R Shiny decision-support app automating 50\% of enterprise LCA workflows, estimated at \$15M in annual cost savings across Dow's global operations.

  ],
  [
    Lake Jackson, TX

    May 2025 – Aug 2025

  ],
)

#regular-entry(
  [
    #strong[Genentech], Informatics R&D Intern, Development Sciences & Informatics

    - Reproduced the published GLIT multimodal GNN as a prediction benchmark, then prototyped an alternative MLP combining ECFP fingerprints with diffusion-based profiles with full train\/test methodology and performance evaluation in PyTorch.

    - Built a document tokenization framework feeding downstream NLP annotation and text-mining pipelines over a large-scale corpus.

  ],
  [
    San Francisco, CA

    May 2021 – Jan 2022

  ],
)

#regular-entry(
  [
    #strong[Procter & Gamble], Advanced Analytics Co-Op, Consumer & Market Knowledge

    - Delivered predictive and explanatory models on shopper and retailer behavior for global Fabric Care brand teams, informing a corporate strategy shift toward DTC ecommerce.

    - Raised cross-functional analyst throughput 1.5x by building GCP big-data ETL pipelines on Apache Airflow.

  ],
  [
    Cincinnati, OH

    Jan 2021 – May 2021

  ],
)

#regular-entry(
  [
    #strong[Bristol Myers Squibb], Data Engineering Intern

    - Built PatRec, a full-stack ranking application chaining chemical-entity NER, NCBI federated search, and TF-IDF cosine-similarity scoring to rank relevant patents from an 80M-document corpus for internal BMS scientists.

    - Designed relational (PostgreSQL) and graph (Neo4j) database architectures supporting multiple internal R&D analytical workloads.

  ],
  [
    San Francisco, CA

    June 2020 – Aug 2020

  ],
)

== Selected Publications

#regular-entry(
  [
    #strong[Trust and Uncertainty Quantification in Machine Learning Models Under Measurement Error]

    #strong[Sabharwal R]

    (The Dow Chemical Company, Internal White Paper)

  ],
  [
    Aug 2025

  ],
)

#regular-entry(
  [
    #strong[Baseline characteristics of SARS-CoV-2 vaccine non-responders in a large population-based sample]

    Yaseen A, DeSantis SM, #strong[Sabharwal R], et al.

    #link("https://doi.org/10.1371/journal.pone.0303420")[10.1371\/journal.pone.0303420] (PLoS One)

  ],
  [
    May 2024

  ],
)

#regular-entry(
  [
    #strong[Scholarly recommendation systems: a literature survey]

    Zhang Z, Patra BG, #strong[Sabharwal R], et al.

    #link("https://doi.org/10.1007/s10115-023-01901-x")[10.1007\/s10115-023-01901-x] (Knowledge and Information Systems)

  ],
  [
    June 2023

  ],
)

== Skills

#strong[Quantitative Research & Modeling:] Forecasting, Time-Series Prediction, Bayesian Inference & Uncertainty Quantification, Calibration & Backtesting, Survival Analysis, Mixed Models, Causal Inference, Explainable AI, Graph Neural Networks, Recommender & Ranking Systems

#strong[ML\/AI Libraries:] PyTorch, PyTorch Lightning, scikit-learn, Hugging Face, TensorFlow Probability, tidymodels, brms, Optuna

#strong[Programming & Data:] Python (NumPy, polars, pandas, duckdb), R (data.table, tidyverse, ellmer), SQL, Bash

#strong[Data Engineering & Infra:] Apache Airflow, Docker, Kubernetes, GitHub\/GitLab CI\/CD, GCP, AWS, Azure, PostgreSQL, Neo4j, BigQuery
