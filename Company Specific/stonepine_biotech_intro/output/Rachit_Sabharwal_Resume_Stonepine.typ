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
    day: 30,
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

Ph.D. Candidate (expected Aug 2026) with 6+ years of R&D experience across biotech (Genentech), pharma (Bristol Myers Squibb), and chemicals (Dow), spanning drug-safety modeling, biomedical NLP and IP discovery, and Bayesian uncertainty quantification. Dissertation develops explainable multimodal AI for severe traumatic brain injury (TBI) outcome prediction in ICU settings. Translates quantitative methods into peer-reviewed science and tools that drive operational and scientific decisions.

== Education

#education-entry(
  [
    #strong[The University of Texas Health Science Center at Houston], Biostatistics and Epidemiology

    - Focus: Explainable AI

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
    #strong[The University of Texas Health Science Center at Houston]

    Research Data Scientist

    - Dissertation on explainable multimodal deep learning for severe TBI outcome prediction, spanning a systematic review of ML\/DL methods, unimodal deep learning on ICU physiological signals benchmarked against classical-ML baselines, and an XAI multimodal model fusing heterogeneous clinical signals.

    - Designed and deployed an agentic LLM pipeline that automated an end-to-end content-transformation workflow; the resulting open educational resource was adopted as official course material at multiple universities.

    - Led a team evaluating transformer-based language models for automated extraction and classification of free-text physician notes informing clinical NLP pipeline design.

    - Cut data-munging turnaround 24x by re-architecting ETL pipelines; stood up CI\/CD automated reporting that ingests new data weekly, runs quality checks, and publishes stakeholder outputs without manual intervention.

    - Co-authored 4 peer-reviewed publications on SARS-CoV-2 vaccine non-response and pediatric COVID comorbidities using survival analysis, linear mixed models, and other statistical methods on population-based cohorts.

  ],
  [
    Houston, TX

    Feb 2020 – present

  ],
)

#regular-entry(
  [
    #strong[The Dow Chemical Company]

    ML R&D Intern

    - Shipped an R Shiny decision-support app automating 50\% of enterprise Life Cycle Assessment workflows, estimated at \$15M in annual cost savings across Dow's global operations.

    - Authored an internal Bayesian UQ white paper adopted as organizational guidance for future predictive modeling projects, distilling a benchmark of 25+ measurement-error scenarios across Gaussian process, Bayesian neural network, and Monte Carlo dropout models against frequentist counterparts.

  ],
  [
    Lake Jackson, TX

    May 2025 – Aug 2025

  ],
)

#regular-entry(
  [
    #strong[Genentech]

    Informatics R&D Intern

    - Reproduced the published GLIT multimodal GNN for drug-induced liver injury (DILI\/hepatotoxicity) prediction, then prototyped an alternative MLP combining molecular fingerprints (ECFP) with drug diffusion profiles that matched GLIT within 10\% predictive performance at reduced model complexity.

    - Built a document tokenization framework supporting downstream biomedical NLP annotation and text-mining pipelines.

  ],
  [
    San Francisco, CA

    May 2021 – Jan 2022

  ],
)

#regular-entry(
  [
    #strong[Procter & Gamble]

    Advanced Analytics Co-Op

    - Delivered predictive models on consumer behavior; raised cross-functional analyst throughput 1.5x via GCP big-data ETL pipelines using Apache Airflow.

  ],
  [
    Cincinnati, OH

    Jan 2021 – May 2021

  ],
)

#regular-entry(
  [
    #strong[Bristol Myers Squibb]

    Data Engineering Intern

    - Built PatRec, a full-stack biotech IP discovery system chaining chemical-entity NER, NCBI federated literature search, and TF-IDF cosine-similarity ranking to surface relevant patents from an 80M-patent corpus for internal R&D scientists.

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

    Messiah SE, Abbas R, #strong[Sabharwal R], et al.

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

    Messiah SE, Talebi Y, #strong[Sabharwal R], et al.

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

#strong[Biomedical AI & Statistical Modeling:] Multimodal Deep Learning, Explainable AI, Graph Neural Networks, Bayesian Inference & UQ, Survival Analysis, Mixed Models, Clinical NLP, LLM Agentic Pipelines, Recommender Systems

#strong[Drug Development & Life Sciences:] Drug-Safety \/ DILI Prediction, Cheminformatics (molecular fingerprints), ICU Time-Series, Biomedical IP \/ Patent Mining, Population-Based Cohort Analysis

#strong[ML\/AI Libraries:] PyTorch, PyTorch Lightning, Hugging Face, TensorFlow Probability, scikit-learn, tidymodels, brms, Optuna, SHAP, RDKit

#strong[Programming & Data:] Python, R, SQL, Bash

#strong[MLOps & Cloud:] Docker, Kubernetes, Apache Airflow, GitHub\/GitLab CI\/CD, GCP, AWS, Azure, PostgreSQL, pgvector, Neo4j, BigQuery
