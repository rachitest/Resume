// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Rachit Sabharwal",
  title: "Rachit Sabharwal - CV",
  footer: context { [#emph[Rachit Sabharwal -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in May 2026] ],
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
    month: 5,
    day: 7,
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

Ph.D. Candidate (expected Aug 2026) with training in causal inference and quasi-experimental methods, plus 6+ years building predictive models and decision-support tools for business and research stakeholders across CPG, chemicals, biotech, and healthcare. Comfortable owning work end-to-end — from large-scale ETL and modeling through stakeholder-facing dashboards and executive white papers.

== Education

#education-entry(
  [
    #strong[The University of Texas Health Science Center at Houston], Epidemiology and Biostatistics

    - Coursework: Causal Inference, Quasi-Experimental Methods, Survival Analysis, Longitudinal Data Analysis, Bayesian Statistics

    - Certificates: Advanced Data Science

  ],
  [
    Houston, TX

    Expected Aug 2026

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

    Apr 2025

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

    May 2022

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

    May 2018

  ],
  degree-column: [
    #strong[B.S.]
  ],
)

== Experience

#regular-entry(
  [
    #strong[UTHealth Houston, School of Public Health], Research Data Scientist

    - Contributed quantitative analyses on claims data and EHR data to an R01 grant proposal on disability in adolescents and young adults.

    - Cut data-munging turnaround 24x by re-architecting the TexasCARES ETL to process multi-year, out-of-memory cohort data using polars and duckdb; stood up CI\/CD automated reporting that ingests new data weekly, runs automated data-quality checks, and publishes stakeholder outputs without manual intervention.

    - Shipped and maintained a public-facing statewide COVID-19 dashboard (Python, Tableau) ingesting case and antibody survey data continuously, providing real-time epidemic monitoring for public and health-department stakeholders.

    - Designed multi-site star schema and ETL for DETECT-RPC harmonizing clinical records from 6 academic medical centers; built a Quarto dashboard giving PIs real-time visibility into data collection progress across sites.

    - Co-authored 4 peer-reviewed publications on SARS-CoV-2 vaccine non-response and pediatric COVID comorbidities using survival analysis and mixed models on population-based cohorts.

  ],
  [
    Houston, TX

    Feb 2020 – present

  ],
)

#regular-entry(
  [
    #strong[The Dow Chemical Company], ML R&D Intern

    - Benchmarked Bayesian models (Gaussian process regression, Bayesian neural networks, Monte Carlo dropout) against frequentist counterparts across 25+ measurement-error scenarios using PICP, ECE, and CI-width calibration metrics.

    - Shipped an R Shiny decision-support app automating 50\% of enterprise Life Cycle Assessment workflows, estimated at \$15M in annual cost savings across Dow's global operations.

    - Authored an internal Bayesian UQ white paper distilling benchmark findings into organizational guidance for future predictive modeling projects.

  ],
  [
    Lake Jackson, TX

    May 2025 – Aug 2025

  ],
)

#regular-entry(
  [
    #strong[Genentech], Informatics Intern

    - Reproduced the published GLIT multimodal GNN on DILI benchmarks, then prototyped a lower-complexity MLP combining ECFP fingerprints with drug diffusion profiles, demonstrating comparable predictive performance at substantially reduced model complexity.

    - Built a document tokenization framework that feeds into downstream NLP annotation and text-mining pipelines.

  ],
  [
    San Francisco, CA

    May 2021 – Jan 2022

  ],
)

#regular-entry(
  [
    #strong[Procter & Gamble], Advanced Analytics Co-Op

    - Delivered predictive and explanatory models on shopper and retailer behavior for global Fabric Care brand teams; translated findings into recommendations that informed corporate strategy around DTC ecommerce.

    - Raised cross-functional analyst throughput 1.5x by building GCP big-data ETL pipelines using Apache Airflow to process out-of-memory shopper and retailer datasets.

    - Raised codebase test coverage from 0\% to 70\% by introducing containerization, unit testing, and agile practices.

  ],
  [
    Cincinnati, OH

    Jan 2021 – Apr 2021

  ],
)

#regular-entry(
  [
    #strong[Bristol Myers Squibb], Data Engineering Intern

    - Built PatRec, a full-stack patent recommendations app chaining chemical-entity NER, NCBI federated search, and TF-IDF cosine-similarity ranking to surface relevant patents from an 80M-patent corpus for internal R&D scientists.

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
    #strong[Factors associated with elevated SARS-CoV-2 immune response in children and adolescents]

    Messiah SE, Abbas R, Bergqvist E, Swartz MD, Talebi Y, #strong[Sabharwal R], et al.

    #link("https://doi.org/10.3389/fped.2024.1393321")[10.3389\/fped.2024.1393321] (Frontiers in Pediatrics)

  ],
  [
    Aug 2024

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
    #strong[Long-term immune response to SARS-CoV-2 infection and vaccination in children and adolescents]

    Messiah SE, Talebi Y, Swartz MD, #strong[Sabharwal R], et al.

    #link("https://doi.org/10.1038/s41390-023-02857-y")[10.1038\/s41390-023-02857-y] (Pediatric Research)

  ],
  [
    Oct 2023

  ],
)

== Skills

#strong[Causal Inference & Experimentation:] Difference-in-Differences, Synthetic Control, Propensity Scores \/ IPW, G-methods, Instrumental Variables, Target Trial Emulation, A\/B Testing & Power Analysis

#strong[Statistical Methods:] Survival Analysis, Linear & Generalized Linear Mixed Models, Longitudinal Data Analysis, Bayesian Inference & UQ, Measurement Error Modeling

#strong[ML:] scikit-learn, PyTorch, tidymodels, brms, statsmodels, lifelines, Optuna, SHAP

#strong[Programming & Data:] Python (polars, pandas, duckdb), R (data.table, tidyverse), SQL, SAS, Bash

#strong[Production & Cloud:] Docker, Apache Airflow, GitHub\/GitLab CI\/CD, GCP (BigQuery), AWS, Azure, PostgreSQL

#strong[Visualization & Communication:] R Shiny, Quarto, Tableau, ggplot2, Plotly, Streamlit, peer-reviewed publications, white papers
