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

Ph.D. Candidate (expected Aug 2026) and 6+ years developing production models, agentic LLM pipelines, and multimodal deep learning systems across regulated enterprise environments (iotech, Fortune-50 chemicals, population-health research). Dissertation focuses on explainable multimodal AI for severe TBI outcome prediction. Seeking applied GenAI \/ LLM R&D roles focused on conversational AI and intelligent digital-assistant development.

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

    - Thesis: BioRec — a biomedical recommendation system for academic conferences and journals

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

    - Dissertation on explainable multimodal deep learning for severe TBI outcome prediction, spanning a systematic review of ML\/DL methods, unimodal deep learning on TBI ICU signals benchmarked against classical-ML baselines, and an XAI multimodal model.

    - Architected an agentic LLM orchestration pipeline (multi-step tool-calling) using ellmer, Groq, and DeepSeek R1 70B to migrate textbooks from R Markdown to Quarto

    - Applied soft prompt-tuning to adapt the agent to r4epi textbook   conventions, improving formatting accuracy over zero-shot prompting while   chaining file transfer, code reformatting, and grammar transformation.

    - Led a team prototyping LLM-based free-text physician-note classification for DETECT-RPC, evaluating retrieval-augmented and prompt-engineering strategies to inform the project's NLP pipeline design.

    - Cut data-munging turnaround 24x by re-architecting the TexasCARES ETL pipelines; stood up CI\/CD automated reporting that ingests new data weekly, runs quality checks, and publishes stakeholder outputs without manual intervention.

    - Co-authored 4 peer-reviewed publications on SARS-CoV-2 vaccine non-response and pediatric COVID comorbidities using survival analysis, linear mixed models, and other statistical methods on population-based cohorts.

  ],
  [
    Houston, TX

    Feb 2020 – present

  ],
)

#regular-entry(
  [
    #strong[Dow Chemical], R&D Intern, Machine Learning, Optimization & Statistics (MiLOS), Core R&D

    - Benchmarked Bayesian models (Gaussian process regression, Bayesian neural networks, Monte Carlo dropout) against frequentist counterparts across 25+ measurement-error scenarios using UQ calibration metrics.

    - Shipped an R Shiny decision-support app automating 50\% of enterprise LCA workflows, estimated at \$15M in annual cost savings across Dow's global operations.

    - Authored an internal Bayesian UQ white paper (MiLOS) adopted as organizational guidance for future predictive modeling projects.

  ],
  [
    Lake Jackson, TX

    May 2025 – Aug 2025

  ],
)

#regular-entry(
  [
    #strong[Genentech], Informatics R&D Intern, Development Sciences & Informatics

    - Reproduced the published GLIT multimodal GNN to benchmark DILI prediction, then prototyped an alternative MLP combining ECFP fingerprints with drug diffusion profiles.

    - Built a document tokenization framework that feeds into downstream NLP annotation and text-mining pipelines.

  ],
  [
    San Francisco, CA

    May 2021 – Jan 2022

  ],
)

#regular-entry(
  [
    #strong[Procter & Gamble], Advanced Analytics Co-Op, Consumer & Market Knowledge

    - Delivered predictive and explanatory models on shopper and retailer behavior for global Fabric Care brand teams, informing corporate focus shift toward DTC ecommerce.

    - Raised cross-functional analyst throughput 1.5x by building GCP big-data ETL pipelines using Apache Airflow.

  ],
  [
    Cincinnati, OH

    Jan 2021 – May 2021

  ],
)

#regular-entry(
  [
    #strong[Bristol Myers Squibb], Data Engineering Intern

    - Built PatRec, a full-stack patent recommendations app chaining chemical-entity NER, NCBI federated search, and BERT-based semantic similarity with TF-IDF cosine-similarity ranking to curate relevant patents from an 80M-patent corpus for internal BMS scientists.

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

#strong[AI & Machine Learning:] LLM Agentic Pipelines, LLM APIs (Groq, Claude, Gemini, OpenAI-compatible), Retrieval-Augmented Generation (RAG), Soft Prompt-Tuning, Knowledge Graphs, Multimodal Deep Learning, Explainable AI, Graph Neural Networks, NLP, Bayesian Inference & UQ, Recommender Systems, Survival Analysis, Mixed Models

#strong[ML\/AI Libraries:] PyTorch, PyTorch Lightning, Hugging Face (BERT \/ Transformer fine-tuning), TensorFlow Probability, scikit-learn, tidymodels, brms, Optuna

#strong[Programming & Data:] Python (polars, pandas, duckdb), R (data.table, tidyverse, ellmer), SQL, Bash

#strong[MLOps & Cloud:] Docker, Kubernetes, Apache Airflow, GitHub\/GitLab CI\/CD, GCP, AWS, Azure, PostgreSQL, Neo4j, BigQuery
