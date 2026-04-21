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
  entries-allow-page-break: true,
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

Ph.D. Candidate in Epidemiology and Biostatistics (expected Aug 2026) with 6+ years building production forecasting, predictive, and causal models across consumer goods, healthcare, life sciences, and process manufacturing. Work spans shopper and retailer behavioral forecasting on clickstream at P&G, Bayesian uncertainty quantification for high-stakes R&D decisions at Dow (\$15M annual impact), and RNN\/LSTM sequence models on high-frequency longitudinal data. Track record of partnering with finance, engineering, and non-technical stakeholders to ship CI\/CD-backed pipelines and decision-support tools that scale with weekly or continuous data. Interested in applying statistical and causal modeling to drive financial decision-making at scale within Amazon Stores.

== Education

#education-entry(
  [
    #strong[The University of Texas Health Science Center at Houston], Epidemiology and Biostatistics

    - Focus: Causal Inference, Predictive Modeling, Explainable AI

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
    #strong[UTHealth Houston, School of Public Health], Research Data Scientist (PhD)

    - Trained and benchmarked RNN and LSTM sequence models on high-frequency hourly longitudinal signals against classical-ML baselines (logistic regression, gradient boosting, random forest) for outcome prediction — spanning a PRISMA 2020 systematic review through an explainable multimodal model.

    - Cut data-munging turnaround 24x by re-architecting the TexasCARES ETL; stood up CI\/CD automated reporting in Python and R that ingests new data weekly, runs quality checks, and publishes stakeholder outputs without manual intervention, backed by a full lifecycle test suite.

    - Designed the multi-site star schema and SQL ETL for the R33 phase of DETECT-RPC, harmonizing records from 6 sites, and built a Quarto dashboard giving principal investigators real-time visibility into data collection progress.

    - Co-authored 4 peer-reviewed publications using survival analysis, linear mixed models, and causal methods on large population-based cohorts; supervised 2 M.S. analysts and led a 2-person teaching team for PH 1976 (Fundamentals of Data Analytics and Predictions).

  ],
  [
    Houston, TX

    Aug 2022 – Aug 2026

  ],
)

#regular-entry(
  [
    #strong[The Dow Chemical Company], ML R&D Intern, Machine Learning, Optimization & Statistics (MiLOS), Core R&D

    - Shipped an R Shiny decision-support app that automated 50\% of enterprise Life Cycle Assessment workflows, estimated at \$15M in annual cost savings across Dow's global operations, and presented results to technical and non-technical stakeholders across R&D and commercial functions.

    - Benchmarked Bayesian forecasting models (Gaussian process regression, Bayesian neural networks, Monte Carlo dropout) against frequentist counterparts across 25+ measurement-error scenarios using PICP, ECE, and CI-width calibration metrics to quantify model reliability for high-stakes capital and R&D decisions.

    - Authored an internal Bayesian UQ white paper (MiLOS) adopted as organizational guidance for future predictive modeling projects.

  ],
  [
    Lake Jackson, TX

    May 2025 – Aug 2025

  ],
)

#regular-entry(
  [
    #strong[UTHealth Houston, School of Public Health], Research Data Scientist (MS)

    - Shipped and maintained a public-facing statewide COVID-19 dashboard (Python, Tableau) ingesting case and antibody survey data continuously, and translated model outputs into narratives for non-technical public and state-agency audiences.

    - Engineered ETL pipelines for TexasCARES handling PII with quality controls from ingestion through publication, supporting downstream modeling and reporting workloads.

  ],
  [
    Houston, TX

    Feb 2020 – May 2022

  ],
)

#regular-entry(
  [
    #strong[Procter & Gamble], Advanced Analytics Co-Op, Consumer & Market Knowledge

    - Delivered predictive and explanatory models forecasting shopper and retailer behavior from large-scale clickstream data for global Fabric Care brand teams, directly informing corporate strategy and investment decisions around DTC ecommerce.

    - Raised cross-functional analyst throughput 1.5x by building GCP big-data ETL pipelines on Apache Airflow, partnering across data engineering, analytics, and brand stakeholders.

    - Raised codebase test coverage from 0\% to 70\% by introducing containerization, unit testing, and agile practices to support production-grade model deployment.

  ],
  [
    Cincinnati, OH

    Jan 2021 – Apr 2021

  ],
)

#regular-entry(
  [
    #strong[Genentech], Informatics Intern, Development Sciences & Informatics

    - Reproduced the published GLIT multimodal GNN on DILI benchmarks, then prototyped a lower-complexity MLP over ECFP fingerprints and drug diffusion profiles in PyTorch Lightning to test whether model complexity could be reduced without meaningfully hurting predictive performance — framing a parsimony-vs-accuracy tradeoff for downstream stakeholders.

  ],
  [
    San Francisco, CA

    May 2021 – Jan 2022

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

== Skills

#strong[Modeling & Statistics:] Forecasting, Time-Series Sequence Modeling (RNN, LSTM), Predictive Modeling, Causal Inference, Survival Analysis, Linear & Generalized Linear Mixed Models, Bayesian Inference & Uncertainty Quantification (Gaussian Processes, BNNs, MC Dropout), Measurement Error Modeling, Explainable AI

#strong[Programming & Querying:] SQL, Python (polars, pandas, duckdb), R (data.table, tidyverse), SAS, Bash

#strong[ML\/Stats Libraries:] scikit-learn, PyTorch, PyTorch Lightning, TensorFlow Probability, statsmodels, lifelines, tidymodels, brms, Optuna

#strong[Data Engineering & Cloud:] Apache Airflow, GitHub\/GitLab CI\/CD, Docker, Kubernetes, PostgreSQL, BigQuery, AWS, GCP, Azure

#strong[Visualization & Stakeholder Reporting:] R Shiny, Quarto, Tableau, Streamlit, Python Dash, ggplot2, Plotly
