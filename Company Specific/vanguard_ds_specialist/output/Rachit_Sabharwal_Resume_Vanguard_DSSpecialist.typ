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
    day: 21,
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

Ph.D. candidate (expected Aug 2026) with 6+ years delivering production data systems, predictive and generative AI models, and stakeholder-facing decision-support tools across regulated enterprise settings (chemicals, pharma, CPG, public health). Owns work end-to-end from SQL and ETL through modeling, governance, and dashboards. Hands-on with Python, R, SQL, scikit-learn, TensorFlow, and LLM agentic pipelines; mentors junior analysts and students.

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

    - Dissertation on explainable multimodal deep learning for severe TBI outcome prediction, spanning a PRISMA systematic review, temporal deep models on hourly ICU physiological signals benchmarked against classical-ML baselines, and an explainable multimodal fusion model.

    - Built an agentic LLM pipeline (ellmer, Groq, DeepSeek R1 70B) that migrated the r4epi open textbook from R Markdown to Quarto, chaining file transfer, code reformatting, and grammar transformation through a prompt-engineered multi-step workflow.

    - Led a team evaluating LLM feasibility for free-text physician-note classification in DETECT-RPC, informing the project's NLP pipeline design; designed a multi-site star schema and ETL harmonizing clinical records across 6 academic medical centers.

    - Cut data-munging turnaround 24x by re-architecting the TexasCARES ETL; stood up CI\/CD automated reporting backed by a full lifecycle test suite that ingests new data weekly, runs quality checks, and publishes stakeholder outputs without manual intervention.

    - Shipped a public-facing statewide COVID-19 dashboard (Python, Tableau) ingesting case and antibody-survey data continuously, plus internal Quarto dashboards giving PIs real-time visibility into multi-site data collection.

    - Supervised 2 M.S. students across DETECT-RPC analyses and TexasCARES QA\/QC; led a 2-person TA team for PH 1976 (Fundamentals of Data Analytics and Predictions).

    - Co-authored 4 peer-reviewed publications using survival analysis, linear mixed models, and causal-inference methods on population-based cohorts.

  ],
  [
    Houston, TX

    Feb 2020 – present

  ],
)

#regular-entry(
  [
    #strong[The Dow Chemical Company], R&D Intern, Machine Learning, Optimization & Statistics (MiLOS), Core R&D

    - Benchmarked Bayesian models (Gaussian process regression, Bayesian neural networks, Monte Carlo dropout) against frequentist counterparts across 25+ measurement-error scenarios using PICP, ECE, and CI-width calibration metrics.

    - Shipped an R Shiny decision-support app automating 50\% of enterprise Life Cycle Assessment workflows, estimated at \$15M in annual cost savings across Dow's global operations.

    - Authored an internal Bayesian UQ white paper (MiLOS) adopted as organizational guidance for future predictive modeling projects, covering validation, calibration, and responsible-AI practices.

  ],
  [
    Lake Jackson, TX

    May 2025 – Aug 2025

  ],
)

#regular-entry(
  [
    #strong[Procter & Gamble], Advanced Analytics Co-Op, Consumer & Market Knowledge

    - Delivered predictive and explanatory models on shopper and retailer behavior for global Fabric Care brand teams, informing a corporate focus shift toward DTC ecommerce.

    - Raised cross-functional analyst throughput 1.5x by building GCP big-data ETL pipelines on Apache Airflow; raised codebase test coverage from 0\% to 70\% by introducing containerization, unit testing, and agile practices.

  ],
  [
    Cincinnati, OH

    Jan 2021 – May 2021

  ],
)

#regular-entry(
  [
    #strong[Genentech], Informatics R&D Intern, Development Sciences & Informatics

    - Reproduced the published GLIT multimodal GNN to benchmark DILI prediction, then prototyped an alternative MLP combining ECFP fingerprints with drug diffusion profiles in PyTorch Lightning.

    - Built a document tokenization framework feeding downstream NLP annotation and text-mining pipelines.

  ],
  [
    San Francisco, CA

    May 2021 – Jan 2022

  ],
)

#regular-entry(
  [
    #strong[Bristol Myers Squibb], Data Engineering Intern

    - Built PatRec, a full-stack patent recommendations app chaining chemical-entity NER, NCBI federated search, and TF-IDF cosine-similarity ranking to curate relevant patents from an 80M-patent corpus for internal BMS scientists.

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
    #strong[Long-term immune response to SARS-CoV-2 infection and vaccination in children and adolescents]

    Messiah SE, Talebi Y, Swartz MD, #strong[Sabharwal R], et al.

    #link("https://doi.org/10.1038/s41390-023-02857-y")[10.1038\/s41390-023-02857-y] (Pediatric Research)

  ],
  [
    Oct 2023

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

#strong[Machine Learning & AI:] Supervised & Unsupervised ML, Predictive & Prescriptive Analytics, Time-Series Forecasting, Multimodal Deep Learning, NLP, LLM Agentic Pipelines, Prompt Engineering, Embeddings & Retrieval, LLM APIs (Groq, Claude, Gemini, OpenAI-compatible), Bayesian Inference & UQ, Causal Inference, Measurement Error Modeling, Explainable & Responsible AI, Recommender Systems, Survival Analysis, Mixed Models

#strong[ML\/Stats Libraries:] scikit-learn, TensorFlow, TensorFlow Probability, PyTorch, PyTorch Lightning, Hugging Face, statsmodels, lifelines, tidymodels, brms, Optuna

#strong[Programming & Data:] Python (polars, pandas, duckdb), R (data.table, tidyverse, ellmer), SQL, SAS, Bash

#strong[Data Platforms & MLOps:] Docker, Kubernetes, Apache Airflow, GitHub\/GitLab CI\/CD, GCP, AWS, Azure, BigQuery, PostgreSQL, Neo4j

#strong[Visualization & Reporting:] Tableau, R Shiny, Streamlit, Python Dash, Quarto, Plotly, ggplot2
