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
    day: 18,
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

Ph.D. candidate at UTHealth Houston (expected defense Aug 2026) with 6+ years across industry internships and research roles, building production data systems, predictive models, and decision-support tools in healthcare, life sciences, consumer packaged goods, and process manufacturing. Comfortable owning work end-to-end — from ETL and modeling through stakeholder-facing dashboards and white papers — with a dissertation focused on explainable multimodal AI for severe TBI outcome prediction.

== Education

#education-entry(
  [
    #strong[The University of Texas Health Science Center at Houston], Biostatistics

    - Minors: Epidemiology, Health Economics

    - Certificates: Advanced Data Science

    - Expected defense: August 2026

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

    - Thesis: BioRec, a biomedical recommendation system for academic conferences and journals

    - Certificates: Data Science

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

    - Minor: Psychology

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
    #strong[The Dow Chemical Company], ML R&D Intern

    - Shipped an R Shiny decision-support app that automated 50\% of enterprise Life Cycle Assessment workflows, estimated at \$15M in annual cost savings across Dow's global operations.

    - Benchmarked Bayesian models (Gaussian process regression, Bayesian neural networks, Monte Carlo dropout neural networks) against frequentist counterparts across 25+ measurement-error scenarios using PICP, ECE, and CI-width calibration metrics.

    - Authored an internal MiLOS Bayesian UQ white paper distilling the benchmark into organizational guidance for future predictive modeling projects.

  ],
  [
    Lake Jackson, TX

    May 2025 – Aug 2025

  ],
)

#regular-entry(
  [
    #strong[UTHealth Houston, School of Public Health], Research Data Scientist (PhD)

    - Dissertation research on traumatic brain injury outcome prediction spanning a PRISMA 2020 systematic review of ML and DL methods, unimodal deep learning on hourly ICU physiological signals from TRACK-TBI benchmarked against classical-ML baselines, and an explainable multimodal deep-learning model with XAI layers.

    - Contributed quantitative analyses on claims data and EHR data to an R01 grant proposal on disability in adolescents and young adults.

    - Shipped an R Shiny tool mapping Children with Disabilities Algorithm (CWDA) codes to ICD-10 codes, which was adopted for cross-team use.

    - Designed the multi-site star schema and ETL for the R33 phase of DETECT-RPC, harmonizing clinical records from 6 academic medical centers.

    - Built a Quarto dashboard that gave PIs real-time visibility into multi-site data collection progress

    - Supervised 2 M.S. students on quantitative analyses and data-cleaning tasks for DETECT-RPC

    - Led a team evaluating LLM feasibility for free-text physician-note classification in DETECT-RPC, informing the project's NLP pipeline design.

    - Built an agentic LLM pipeline that migrated the r4epi open textbook from R Markdown to Quarto, chaining file transfer, code reformatting, and grammar transformation.

    - Cut data-munging turnaround 24x by re-architecting the TexasCARES ETL, freeing the team to iterate on models weekly instead of monthly.

    - Stood up CI\/CD automated reporting that ingests new data weekly, runs quality checks, and publishes stakeholder outputs without manual intervention, backed by a full lifecycle test suite.

    - Supervised 2 M.S. students on manual QA\/QC of TexasCARES automated reports.

    - Co-authored 4 peer-reviewed publications on SARS-CoV-2 vaccine non-response and pediatric COVID comorbidities using survival analysis, mixed models, and tidymodels on population-based cohorts.

    - Led a 2-person TA team for PH 1976 (Fundamentals of Data Analytics and Predictions, 2025); prior TA for PH 1998 (Statistical and Data Science Programming, 2020).

  ],
  [
    Houston, TX

    Aug 2022 – Aug 2026

  ],
)

#regular-entry(
  [
    #strong[UTHealth Houston, School of Public Health], Research Data Scientist (MS)

    - Shipped and maintained a public-facing statewide COVID-19 dashboard (Python, Tableau) for the Texas COVID-19 Dashboard Project, ingesting case and antibody survey data continuously.

    - Engineered ETL pipelines for TexasCARES, handling PII with quality controls from ingestion to publication.

    - Deployed Streamlit applications for BioRec, making academic conference and journal recommendations accessible to researchers through an interactive UI.

  ],
  [
    Houston, TX

    Feb 2020 – May 2022

  ],
)

#regular-entry(
  [
    #strong[Genentech], Informatics Intern

    - Reproduced the published GLIT multimodal graph neural network on DILI benchmarks, then prototyped a lower-complexity MLP over ECFP fingerprints and drug diffusion profiles in PyTorch Lightning to test whether model complexity could be reduced without meaningfully hurting performance.

    - Built a document tokenization framework to feed internal NLP annotation and text-mining pipelines.

  ],
  [
    San Francisco, CA

    May 2021 – Jan 2022

  ],
)

#regular-entry(
  [
    #strong[Procter & Gamble], Advanced Analytics Co-Op

    - Delivered predictive and explanatory models on shopper and retailer behavior for global Fabric Care brand teams, informing corporate strategy around DTC ecommerce.

    - Raised cross-functional analyst throughput 1.5x by building GCP big-data ETL pipelines using Apache Airflow.

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

    - Built PatRec, a full-stack patent recommendations app chaining chemical-entity NER, NCBI federated search, and TF-IDF cosine-similarity ranking to curate relevant patents from an 80M-patent corpus for internal BMS scientists.

    - Designed relational (PostgreSQL) and graph (Neo4j) database architectures supporting multiple internal R&D analytical workloads.

  ],
  [
    San Francisco, CA

    June 2020 – Aug 2020

  ],
)

== Publications

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

    Messiah SE, Abbas R, Bergqvist E, Swartz MD, Talebi Y, #strong[Sabharwal R], Han H, Valerio-Shewmaker MA, DeSantis SM, Yaseen A, Gandhi HA, Amavisca XF, Ross JA, Padilla LN, Gonzalez MO, Wu L, Silberman MA, Lakey D, Shuford JA, Pont SJ, Boerwinkle E

    #link("https://doi.org/10.3389/fped.2024.1393321")[10.3389\/fped.2024.1393321] (Frontiers in Pediatrics)

  ],
  [
    Aug 2024

  ],
)

#regular-entry(
  [
    #strong[Baseline characteristics of SARS-CoV-2 vaccine non-responders in a large population-based sample]

    Yaseen A, DeSantis SM, #strong[Sabharwal R], Talebi Y, Swartz MD, Zhang S, Leon Novelo L, Pinzon-Gomez CL, Messiah SE, Valerio-Shewmaker M, Kohl HW 3rd, Ross J, Lakey D, Shuford JA, Pont SJ, Boerwinkle E

    #link("https://doi.org/10.1371/journal.pone.0303420")[10.1371\/journal.pone.0303420] (PLoS One)

  ],
  [
    May 2024

  ],
)

#regular-entry(
  [
    #strong[An Interactive Online Dashboard with COVID-19 Trends and Data Analysis in Northeast and South Texas]

    Zhang Z, #strong[Sabharwal R], Lee M, Zhang K, McGaha P, Crum M, Bauer C, Fisher-Hoch SP, McCormick JB, Reininger BM, Thomas S, Guajardo E, Pinon D, Yaseen A

    #link("https://research.ebsco.com/linkprocessor/plink?id=894625e1-7146-30bf-aa2c-9f5637dac41e")[research.ebsco.com\/linkprocessor\/plink?id=894625e1-7146-30bf-aa2c-9f5637dac41e] (Texas Public Health Journal)

  ],
  [
    Apr 2024

  ],
)

#regular-entry(
  [
    #strong[Long-term immune response to SARS-CoV-2 infection and vaccination in children and adolescents]

    Messiah SE, Talebi Y, Swartz MD, #strong[Sabharwal R], Han H, Bergqvist E, Kohl HW 3rd, Valerio-Shewmaker M, DeSantis SM, Yaseen A, Kelder SH, Ross J, Padilla LN, Gonzalez MO, Wu L, Lakey D, Shuford JA, Pont SJ, Boerwinkle E

    #link("https://doi.org/10.1038/s41390-023-02857-y")[10.1038\/s41390-023-02857-y] (Pediatric Research)

  ],
  [
    Oct 2023

  ],
)

#regular-entry(
  [
    #strong[Scholarly recommendation systems: a literature survey]

    Zhang Z, Patra BG, Yaseen A, Zhu J, #strong[Sabharwal R], Roberts K, Cao T, Wu H

    #link("https://doi.org/10.1007/s10115-023-01901-x")[10.1007\/s10115-023-01901-x] (Knowledge and Information Systems)

  ],
  [
    June 2023

  ],
)

#regular-entry(
  [
    #strong[BioRec: A Biomedical Recommendation System for Academic Conferences and Journals]

    #strong[Sabharwal R]

    (UTHealth School of Public Health, M.S. Thesis)

  ],
  [
    Apr 2022

  ],
)

#regular-entry(
  [
    #strong[Data Cleaning for eCommerce: Standardizing Data Handling Practices for eCommerce Datasets]

    #strong[Sabharwal R]

    (Procter & Gamble, Internal White Paper)

  ],
  [
    May 2021

  ],
)

== Skills

#strong[Machine Learning & AI:] Bayesian Inference & UQ (Gaussian Processes, BNNs, MC Dropout), Measurement Error Modeling, Causal Inference, Survival Analysis, Mixed Models, Multimodal Deep Learning, Explainable AI, Graph Neural Networks, NLP, LLM Agentic Pipelines, LLM APIs (Groq, Claude, Gemini, OpenAI-compatible), Recommender Systems, Systematic Review (PRISMA)

#strong[ML\/Stats Libraries:] scikit-learn, PyTorch, PyTorch Lightning, TensorFlow Probability, Hugging Face, tidymodels, brms, statsmodels, lifelines, Optuna

#strong[Programming:] Python (polars, pandas, duckdb), R (data.table, tidyverse), SQL, SAS, Bash

#strong[Data Engineering & Cloud:] Apache Airflow, Cron, Docker, Kubernetes, GitHub\/GitLab CI\/CD, PostgreSQL, SQLite, Neo4j, BigQuery, GCP, AWS, Azure, REDCap (REDCapR)

#strong[Visualization & Reporting:] R Shiny, Quarto, Tableau, ggplot2, Plotly, highcharter, DT, Streamlit, Python Dash

#strong[Research & Communication:] Peer-reviewed publications, white papers, grant writing (R01), technical teaching (TA)

#strong[Domain:] Real-World Data (EHR, claims, surveys), Clinical Outcomes Research, Life Cycle Assessment, CPG Analytics, Drug-Target Informatics, Chem\/Bioinformatics
