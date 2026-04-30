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

Six years translating operational and clinical questions into reproducible analytical frameworks, production dashboards, and version-controlled data pipelines. Experienced owning work end-to-end, from SQL schema design through stakeholder-facing Tableau and R Shiny reporting. Domain depth in healthcare (EHR, claims, multi-site clinical data) and track record partnering with operational leadership to drive decisions across public health, life sciences, and chemicals.

== Education

#education-entry(
  [
    #strong[The University of Texas Health Science Center at Houston], Epidemiology and Biostatistics

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

    - Shipped and maintained a public-facing statewide COVID-19 dashboard (Python, Tableau) ingesting case and antibody-survey data continuously; delivered Quarto dashboards giving operational leadership real-time visibility into multi-site data-collection progress across 6 academic medical centers.

    - Owned end-to-end recurring reporting for TexasCARES — redesigned the SQL ETL to cut data-munging turnaround 24x, then stood up version-controlled, CI\/CD-automated pipelines that ingest new data weekly, run quality checks, and publish stakeholder outputs without manual intervention; backed by a full lifecycle test suite.

    - Designed the multi-site star schema and SQL ETL for DETECT-RPC, harmonizing clinical records from 6 AMCs; partnered with senior investigators to translate operational questions into query and reporting specifications; shipped an R Shiny CWDA→ICD-10 mapping tool adopted for cross-team use.

    - Applied regression (linear, logistic, survival analysis, linear mixed models) to population-based EHR and claims cohorts, co- authoring 4 peer-reviewed publications on vaccine non-response and pediatric COVID comorbidities.

    - Supervised 2 M.S. students on data analysis and QA\/QC; led a 2-person TA team for PH 1976 (Fundamentals of Data Analytics and Predictions), coaching on SQL, statistical programming, and reproducible reporting.

  ],
  [
    Houston, TX

    Feb 2020 – present

  ],
)

#regular-entry(
  [
    #strong[The Dow Chemical Company], R&D Intern, Machine Learning, Optimization & Statistics (MiLOS), Core R&D

    - Shipped an R Shiny decision-support app that automated 50\% of enterprise Life Cycle Assessment workflows for global operations, estimated at \$15M in annual cost savings.

    - Benchmarked predictive models across 25+ scenarios using calibration metrics to quantify forecast reliability for non-technical business stakeholders. Authored an internal white paper on findings which was adopted as organizational guidance.

  ],
  [
    Lake Jackson, TX

    May 2025 – Aug 2025

  ],
)

#regular-entry(
  [
    #strong[Procter & Gamble], Advanced Analytics Co-Op, Consumer & Market Knowledge

    - Delivered predictive and explanatory regression models on shopper and retailer behavior for global Fabric Care brand teams, informing a corporate strategy shift toward DTC ecommerce.

    - Raised cross-functional analyst throughput 1.5x by building GCP big-data ETL pipelines on Apache Airflow; raised codebase test coverage from 0\% to 70\% through containerization and agile practices.

  ],
  [
    Cincinnati, OH

    Jan 2021 – May 2021

  ],
)

#regular-entry(
  [
    #strong[Bristol Myers Squibb], Data Engineering Intern

    - Designed relational (PostgreSQL) and graph (Neo4j) database schemas supporting multiple internal R&D analytical workloads.

    - Built PatRec, a full-stack recommendations app chaining entity recognition, federated search, and similarity ranking to surface relevant patents from an 80M-patent corpus for internal scientists.

  ],
  [
    San Francisco, CA

    June 2020 – Aug 2020

  ],
)

#regular-entry(
  [
    #strong[Genentech], Informatics R&D Intern

    - Benchmarked a published multimodal GNN on DILI prediction and prototyped a simpler MLP alternative to assess model complexity vs. performance tradeoffs for non-technical R&D stakeholders.

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

#strong[Programming & Data:] SQL, Python (polars, pandas, duckdb), R (data.table, tidyverse, tidymodels), SAS, Bash

#strong[Visualization & Reporting:] Tableau, R Shiny, Quarto, Streamlit, Python Dash, Plotly, ggplot2, DT

#strong[Data Platforms & Pipelines:] PostgreSQL, BigQuery, Apache Airflow, GitHub\/GitLab CI\/CD, version-controlled SQL pipelines, Docker, GCP, AWS, Azure, REDCap

#strong[Analytics & Statistics:] Regression (linear, logistic, GLM), Survival Analysis, Mixed Models, Probability & Uncertainty Quantification, Causal Inference, Forecasting, A\/B Testing, Bayesian Inference, Measurement Error Modeling

#strong[Domain:] Healthcare Operations, EHR & Claims Data, Clinical Outcomes Research, Multi-Site Data Harmonization, Public Health Surveillance, Life Sciences Analytics, CPG Analytics
