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

Ph.D. candidate (expected Aug 2026) with 6+ years translating business questions into analytical frameworks, owning recurring reporting workflows, and delivering stakeholder-facing dashboards across chemicals, consumer packaged goods, pharma, and public-health settings. Strong SQL, Python, R, and Tableau; comfortable mentoring junior analysts and converting structured and unstructured data into actionable insights for business and product leadership.

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

    - Shipped a public-facing statewide COVID-19 dashboard (Python, Tableau) ingesting case and antibody-survey data continuously, and internal Quarto dashboards giving PIs real-time visibility into multi-site data-collection progress.

    - Owned recurring reporting for TexasCARES: cut data-munging turnaround 24x by re-architecting the ETL, then stood up CI\/CD automated reporting backed by a full lifecycle test suite that ingests new data weekly, runs quality checks, and publishes stakeholder outputs without manual intervention.

    - Designed a multi-site star schema and ETL for DETECT-RPC harmonizing clinical records from 6 academic medical centers; partnered with PIs to translate research questions into query and reporting specifications.

    - Conducted historical cohort investigations — survival analysis, linear mixed models, and causal-inference methods — on population-based SARS-CoV-2 and pediatric-COVID data, co-authoring 4 peer-reviewed publications.

    - Supervised 2 M.S. students across DETECT-RPC analyses and TexasCARES QA\/QC; led a 2-person TA team for PH 1976 (Fundamentals of Data Analytics and Predictions), coaching students on SQL, reporting, and statistical programming.

    - Led a team evaluating LLM feasibility for free-text physician-note classification (DETECT-RPC) and built an agentic LLM pipeline that migrated the r4epi open textbook from R Markdown to Quarto end-to-end.

  ],
  [
    Houston, TX

    Feb 2020 – present

  ],
)

#regular-entry(
  [
    #strong[The Dow Chemical Company], R&D Intern, Machine Learning, Optimization & Statistics (MiLOS), Core R&D

    - Shipped an R Shiny decision-support app automating 50\% of enterprise Life Cycle Assessment workflows, estimated at \$15M in annual cost savings across Dow's global operations.

    - Benchmarked predictive models under 25+ measurement-error scenarios using PICP, ECE, and CI-width calibration metrics to quantify forecast reliability for business stakeholders.

    - Authored an internal white paper adopted as organizational guidance for future predictive modeling and reporting projects.

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

    - Reproduced a published multimodal GNN on DILI benchmarks and prototyped a simpler alternative to test tradeoffs between model complexity and performance.

    - Built a document tokenization framework feeding downstream NLP annotation and text-mining pipelines on unstructured scientific text.

  ],
  [
    San Francisco, CA

    May 2021 – Jan 2022

  ],
)

#regular-entry(
  [
    #strong[Bristol Myers Squibb], Data Engineering Intern

    - Built PatRec, a full-stack patent recommendations app chaining entity recognition, federated search, and similarity ranking to curate relevant patents from an 80M-patent corpus for internal BMS scientists.

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

#strong[Analytics & Statistics:] Exploratory Data Analysis, Cohort & Historical Trend Analysis, Experimentation & A\/B Testing, Survival Analysis, Mixed Models, Causal Inference, Measurement Error Modeling, Forecasting, Bayesian Inference & UQ, Predictive & Prescriptive Analytics

#strong[Programming & Data:] SQL, Python (polars, pandas, duckdb), R (data.table, tidyverse, tidymodels), SAS, Bash

#strong[Visualization & Reporting:] Tableau, R Shiny, Streamlit, Python Dash, Quarto, Plotly, ggplot2, DT

#strong[Data Platforms & Engineering:] BigQuery, PostgreSQL, Neo4j, Apache Airflow, GCP, AWS, Azure, Docker, GitHub\/GitLab CI\/CD

#strong[Machine Learning & AI:] scikit-learn, PyTorch, Hugging Face, NLP on unstructured text, LLM Agentic Pipelines, Recommender Systems, Explainable AI
