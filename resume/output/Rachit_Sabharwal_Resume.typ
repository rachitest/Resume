// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Rachit Sabharwal",
  title: "Rachit Sabharwal - CV",
  footer: context { [#emph[Rachit Sabharwal -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Mar 2026] ],
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
    month: 3,
    day: 28,
  ),
)


= Rachit Sabharwal

#connections(
  [Cypress, Texas],
  [#link("tel:+1-585-281-1928", icon: false, if-underline: false, if-color: false)[(585) 281-1928]],
  [#link("https://github.com/rachitest", icon: false, if-underline: false, if-color: false)[github.com\/rachitest]],
)


== Professional Summary

Ph.D. Candidate with dual expertise in Real-World Evidence (RWE) and Machine Learning. Experience developing graph neural networks, NLP pipelines, and Bayesian Uncertainty Quantification (UQ) frameworks. Proven ability to translate complex biomedical data (EHR, claims, omics) into actionable insights for drug discovery and safety signal detection.

== Education

#education-entry(
  [
    #strong[The University of Texas Health Science Center at Houston], Epidemiology

    - Minors: Biostatistics, Health Economics

    - Certificates: Advanced Data Science

  ],
  [
    Houston, TX

    Aug 2022 – present

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
    #strong[The Dow Chemical Company], Research & Development Intern, MiLOS (Machine Learning, Optimization, & Statistics), Engineering & Process Sciences, Core R&D

    - Authored internal guidance on Uncertainty Quantification (UQ), demonstrating that Bayesian frameworks improved model trustworthiness by \~20-30\% compared to frequentist baselines in simulated real-world scenarios.

    - Created R application allowing users to automate up to 50\% of LCA (Life Cycle Assessment) analysis, estimated to be worth \~15MM annually across Dow

  ],
  [
    Lake Jackson, TX

    May 2025 – Aug 2025

  ],
)

#regular-entry(
  [
    #strong[Genentech], Research and Early Development, Development Sciences & Informatics - Informatics Intern

    - Used Deep Transfer Learning via PyTorch and Raytune to create a DNN to predict ADEs for DILI (Drug-induced Liver Injury)

    - Created a Knowledge Graph with Neo4j and a Graph Neural Network using NetworkX and PyTorch to generate gene expression signature-likes for drugs

    - Developed a framework for the tokenization of internal documents for ingestion into text-mining application

  ],
  [
    San Francisco, CA

    May 2021 – Jan 2022

  ],
)

#regular-entry(
  [
    #strong[Procter & Gamble], Consumer & Market Knowledge - Advanced Analytics Co-Op

    - Created predictive models, analytics, and visualizations that facilitated a deep understanding of consumer and shopper behaviors

    - Used parallel computing (Dask and Modin) to develop both predictive and explanatory models enabling insights into market trends and retailer behavior

    - Created and serviced big data ETL pipelines utilizing the Google Cloud Platform, Python, and Apache Airflow

  ],
  [
    Cincinnati, OH

    Jan 2021 – May 2021

  ],
)

#regular-entry(
  [
    #strong[Bristol Myers Squibb], Data Engineering Intern

    - Utilized Python, HTML, CSS, and Javascript in creating a multifeatured patent recommendation app to significantly improve scientists' workflow

    - Developed and serviced ETL pipelines using Python and Apache Airflow for multiple datasets of varying sizes (small, medium, and large)

    - Designed and maintained both relational and graph databases in PostgreSQL and Neo4j

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
    #strong[Biorec: A Biomedical Recommendation System for Academic Conferences and Journals]

    #strong[Sabharwal, R]

    (UTHealth School of Public Health, MS Thesis)

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

#strong[Languages:] English (Native\/Bilingual), Hindi (Native\/Bilingual), French (Intermediate)

#strong[Work Authorization:] US Citizenship, Canadian Citizenship

== Technical Skills

#strong[Machine Learning Tooling:] Scikit-learn, TidyModels, Raytune, Optuna, Pytorch, Tensorflow, Huggingface, JAX

#strong[Programming Languages:] Python, R, SAS, MATLAB, Javascript, C, Java, HTML, CSS

#strong[Databases:] Research Electronic Data Capture (REDCap), RDBMS (PostgreSQL, SQLite, MySQL), NoSQL DBMS (MongoDB, Elasticsearch, Neo4J), BigQuery

#strong[Cloud and Distributed Computing:] AWS (AWS HPC), GCP, Azure, Spark, Hadoop, Slurm, On-Prem HPC

#strong[DevOps:] Git, GitHub, GitLab, Docker, GitHub\/GitLab CI\/CD, Jenkins, Kubernetes, Jira, Confluence

#strong[Workflow Orchestration:] Airflow, Prefect, Cron, Luigi

#strong[Frameworks and Platforms:] Streamlit, FastAPI, Django, Flask, Heroku, Replit, Great Expectations, PyTest
