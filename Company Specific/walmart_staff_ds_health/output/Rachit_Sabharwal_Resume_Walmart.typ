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

Ph.D. Candidate (expected Aug 2026) and 6+ years building recommendation systems, behavioral and predictive models, and production ML pipelines across consumer goods, biotech, and population health. Co-authored a recommender-systems literature survey, shipped two end-to-end recsys applications (BioRec, PatRec), and modeled shopper and retailer behavior for a global CPG brand. Comfortable owning the full lifecycle from large-scale ETL through model validation, deployment, and stakeholder reporting.

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

    - Dissertation on explainable multimodal deep learning for severe TBI outcome prediction — systematic review of ML\/DL methods, time-series deep learning on ICU physiological signals benchmarked against classical-ML baselines, and a multimodal model with XAI layers.

    - Co-authored a recommender-systems literature survey (KAIS 2023) and shipped BioRec, a biomedical recsys for academic conferences and journals, deployed via Streamlit as an interactive user-facing tool.

    - Built an agentic LLM pipeline (Groq, DeepSeek R1 70B, ellmer) that migrated the r4epi epidemiology textbook from R Markdown to Quarto, now adopted as official course material at UTHealth and TCU.

    - Led a team evaluating LLM feasibility for free-text physician-note classification in DETECT-RPC, informing the project's NLP pipeline design.

    - Cut data-munging turnaround 24x by re-architecting the TexasCARES ETL; stood up CI\/CD reporting that ingests new data weekly, runs quality checks, and publishes stakeholder outputs without manual intervention.

    - Shipped a public-facing statewide COVID-19 dashboard (Python, Tableau) ingesting case and antibody-survey data continuously.

    - Co-authored 4 peer-reviewed publications on SARS-CoV-2 vaccine non-response and pediatric COVID comorbidities using survival analysis and mixed models on population-based cohorts.

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

    - Shipped an R Shiny decision-support app automating 50\% of enterprise LCA workflows, estimated at \$15M in annual cost savings across Dow's global operations.

    - Benchmarked Bayesian UQ methods (Gaussian processes, BNNs, MC dropout) against frequentist baselines using calibration metrics (PICP, ECE), informing organizational guidance for predictive-model validation.

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

    - Reproduced a published multimodal GNN benchmark, then prototyped a lower-complexity MLP combining molecular embeddings (ECFP fingerprints) with drug diffusion profiles in PyTorch Lightning, matching the published baseline within 10\% at substantially reduced model complexity.

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

    - Delivered predictive and customer-segmentation models on shopper and retailer behavior for global Fabric Care brand teams, informing corporate strategy around DTC ecommerce.

    - Raised cross-functional analyst throughput 1.5x by building GCP big-data ETL pipelines using Apache Airflow and BigQuery.

    - Raised codebase test coverage from 0\% to 70\% via containerization, unit testing, and agile practices.

  ],
  [
    Cincinnati, OH

    Jan 2021 – Apr 2021

  ],
)

#regular-entry(
  [
    #strong[Bristol Myers Squibb]

    Data Engineering Intern

    - Built PatRec, a full-stack patent-recommendations app chaining chemical-entity NER, NCBI federated search, and TF-IDF cosine-similarity ranking over an 80M-patent corpus for internal BMS scientists.

    - Designed PostgreSQL and Neo4j database architectures supporting multiple internal R&D analytical workloads.

  ],
  [
    San Francisco, CA

    June 2020 – Aug 2020

  ],
)

== Selected Publications

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
    #strong[Baseline characteristics of SARS-CoV-2 vaccine non-responders in a large population-based sample]

    Yaseen A, DeSantis SM, #strong[Sabharwal R], et al.

    #link("https://doi.org/10.1371/journal.pone.0303420")[10.1371\/journal.pone.0303420] (PLoS One)

  ],
  [
    May 2024

  ],
)

== Skills

#strong[Machine Learning & AI:] Recommender Systems, Personalization, Customer Segmentation, Gradient Boosted Trees, Deep Learning, Embeddings, Multimodal Models, Explainable AI (SHAP), Time-Series Modeling, NLP, LLM Agentic Pipelines, GenAI APIs (Groq, Claude, Gemini, OpenAI-compatible), Bayesian Inference & UQ, Survival Analysis, Mixed Models

#strong[ML\/AI Libraries:] PyTorch, PyTorch Lightning, TensorFlow, Hugging Face, scikit-learn, Optuna, SHAP, tidymodels

#strong[Data & Cloud at Scale:] Python, SQL, R, Bash; BigQuery, Apache Airflow, Spark\/PySpark (familiar), Docker, Kubernetes, GitHub\/GitLab CI\/CD; GCP, AWS, Azure; PostgreSQL, pgvector, Neo4j

#strong[Domain:] Consumer & Retail Analytics (CPG, DTC ecommerce), Real-World Health Data (EHR, claims, surveys), Clinical Outcomes Research, HIPAA-aware data handling
