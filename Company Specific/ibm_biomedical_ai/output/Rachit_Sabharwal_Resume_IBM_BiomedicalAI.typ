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
    day: 25,
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

Ph.D. Candidate (expected Aug 2026) and 6+ years building and deploying statistical models and biomedical AI systems across clinical, pharma, and research environments. Dissertation develops explainable multimodal AI for severe TBI outcome prediction, integrating heterogeneous biomedical data sources. Track record of translating research findings into production systems and peer-reviewed publications.

== Education

#education-entry(
  [
    #strong[The University of Texas Health Science Center at Houston], Epidemiology and Biostatistics

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

    - Conducted a systematic review of ML\/DL methods for severe TBI outcome prediction and benchmarked unimodal deep learning on TBI ICU time-series signals against classical-ML baselines across multiple biomedical data sources.

    - Developing an XAI multimodal biomedical AI model fusing heterogeneous clinical signals (imaging, physiologic, structured EHR) for TBI outcome prediction.

    - Led a team evaluating LLM feasibility for automated extraction and classification of free-text physician notes in DETECT-RPC, informing the project's clinical NLP pipeline design.

    - Cut data-munging turnaround 24x by re-architecting the TexasCARES ETL pipelines across multiple data sources; stood up CI\/CD automated reporting that ingests new data weekly, runs quality checks, and publishes stakeholder outputs without manual intervention.

    - Co-authored 4 peer-reviewed publications using survival analysis, linear mixed models, and other statistical methods on population-based biomedical cohorts (SARS-CoV-2 vaccine non-response, pediatric COVID comorbidities).

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

    - Benchmarked Bayesian statistical models (Gaussian process regression, Bayesian neural networks, Monte Carlo dropout) against frequentist counterparts across 25+ measurement-error scenarios using UQ calibration metrics.

    - Authored an internal Bayesian UQ white paper (MiLOS) adopted as organizational guidance for future predictive modeling projects; shipped a decision-support tool estimated at \$15M annual savings.

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

    - Reproduced the published GLIT multimodal GNN for drug-induced liver injury (DILI) prediction, then designed and validated an alternative MLP combining ECFP molecular fingerprints with drug diffusion profiles that matched GLIT within 10\% predictive performance at reduced model complexity

    - Built a document tokenization framework supporting downstream biomedical NLP annotation and text-mining pipelines.

  ],
  [
    San Francisco, CA

    May 2021 – Jan 2022

  ],
)

#regular-entry(
  [
    #strong[Bristol Myers Squibb]

    Data Engineering Intern

    - Built PatRec, a full-stack biomedical patent recommendation system chaining chemical-entity NER, NCBI federated literature search, and TF-IDF cosine-similarity ranking to surface relevant patents from an 80M-patent corpus for internal R&D scientists.

    - Designed relational (PostgreSQL) and graph (Neo4j) database architectures supporting multiple biomedical R&D analytical workloads.

  ],
  [
    San Francisco, CA

    June 2020 – Aug 2020

  ],
)

#regular-entry(
  [
    #strong[Procter & Gamble]

    Advanced Analytics Co-Op

    - Delivered predictive and explanatory models on consumer behavior; raised analyst throughput 1.5x with GCP big-data ETL pipelines using Apache Airflow.

  ],
  [
    Cincinnati, OH

    Jan 2021 – May 2021

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

#strong[Biomedical AI & Statistical Modeling:] Multimodal Deep Learning, Graph Neural Networks, Explainable AI, Bayesian Inference & UQ, Survival Analysis, Mixed Models, NLP, LLMs, Recommender Systems, Biomedical Data Integration

#strong[ML\/AI Libraries:] PyTorch, PyTorch Lightning, Hugging Face, TensorFlow, TensorFlow Probability, scikit-learn, tidymodels, brms, Optuna, SHAP, RDKit

#strong[Programming & Algorithms:] Python, R, SQL, Bash

#strong[MLOps & Cloud:] Docker, Kubernetes, Apache Airflow, GitHub\/GitLab CI\/CD, GCP, AWS, Azure, PostgreSQL, pgvector, Neo4j, BigQuery
