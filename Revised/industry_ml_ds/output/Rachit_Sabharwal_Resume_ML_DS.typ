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

Ph.D. Candidate (Epidemiology, Expected Aug 2026) with 5+ years of industry experience delivering production ML systems at Dow, Genentech, P&G, and BMS. Specializes in applied machine learning — GNNs, Bayesian UQ, NLP, and deep learning — across life sciences and chemical R&D. Published researcher with a track record of building end-to-end systems that produce measurable business impact.

== Education

#education-entry(
  [
    #strong[The University of Texas Health Science Center at Houston], Epidemiology

    - Minors: Biostatistics, Health Economics

    - Certificates: Advanced Data Science

    - Expected defense: August 2026 (no later than December 2026)

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

    - Thesis: BioRec — A Biomedical Recommendation System for Academic Conferences and Journals

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
    #strong[The Dow Chemical Company], Research & Development Intern, Machine Learning, Optimization & Statistics (MiLOS), Core R&D

    - Delivered an end-to-end R Shiny application automating 50\% of enterprise-wide Life Cycle Assessment (LCA) workflows — from raw data ingestion and cleaning through analysis and interactive reporting — handed directly to stakeholders and estimated to yield \$15M in annual cost savings across Dow.

    - Implemented a Bayesian Neural Network (BNN, TensorFlow Probability + Optuna) systematically evaluated under varying measurement error conditions — outcome noise (0–25\%), predictor noise and multicollinearity (0–25\%), and two sample sizes — using calibration metrics (PICP, ECE, CI width); findings published as an internal white paper adopted by the MiLOS team as guidance for future modeling work.

  ],
  [
    Lake Jackson, TX

    May 2025 – Aug 2025

  ],
)

#regular-entry(
  [
    #strong[The University of Texas Health Science Center at Houston], Data Scientist & ML Engineer, School of Public Health (TXCares, DETECT-RPC, Disability in AYA R01)

    - Developing a multimodal deep neural network with explainable AI (XAI) for severe traumatic brain injury (TBI) outcome prediction as doctoral dissertation research, integrating imaging, clinical, and structured EHR modalities.

    - Led a team assessing LLM feasibility for automated tokenization and classification of free-text physician notes from the DETECT-RPC survey instrument, directly informing the project's NLP pipeline strategy.

    - Built an agentic LLM pipeline (R, ellmer, Groq API, DeepSeek R1 70B) to automate large-scale migration of the r4epi epidemiology textbook from R Markdown to Quarto, chaining file transfer, code chunk reformatting, and LLM-driven grammar transformation steps.

    - Designed a multi-site star schema data architecture and ETL process for the R33 phase of DETECT-RPC, harmonizing clinical data across 6 academic medical centers (UCSF, UAB, UTSW, JHU, UTH, BCM) with data quality testing protocols spanning extract through load.

    - Engineered ETL pipelines achieving a 24x throughput improvement over the prior solution; established DevOps practices, CI\/CD pipelines, and a full data-lifecycle test suite spanning ingestion through report generation.

    - Applied statistical models and ML techniques (tidymodels, scikit-learn, PyTorch) to analyze SARS-CoV-2 vaccine non-response and pediatric COVID-19 comorbidities; contributed to 4 peer-reviewed publications with 2 additional manuscripts under review.

    - Conducted EHR and claims data analyses to support an R01 grant proposal on disability identification in adolescents and young adults (AYA); built an R Shiny application to convert CWDA algorithm codes to ICD-10 codes for use by the research team.

    - Led a 2-person TA team for PH 1976 (Fundamentals of Data Analytics and Predictions, 2025) and served as TA for PH 1998 (Introduction to Statistical and Data Science Programming, 2020), both under Dr. Ashraf Yaseen.

  ],
  [
    Houston, TX

    Sept 2022 – Aug 2026

  ],
)

#regular-entry(
  [
    #strong[The University of Texas Health Science Center at Houston], Research Data Scientist, School of Public Health (TXCares, MS)

    - Built, deployed, and maintained a COVID-19 public dashboard (Python, Tableau) serving the Texas COVID-19 Dashboard Project, processing and visualizing statewide case and antibody survey data.

    - Developed and deployed Streamlit web applications for an academic conference and journal recommender system, implementing recommendation models with Scikit-Surprise, word2vec, and doc2vec.

    - Engineered high-throughput ETL pipelines (Python, R, Cron) feeding COVID-19 dashboards and recommender systems, handling PII-containing datasets across the Texas Coronavirus Antibody Response Survey (TXCares).

  ],
  [
    Houston, TX

    Feb 2020 – Aug 2022

  ],
)

#regular-entry(
  [
    #strong[Genentech], Informatics R&D Intern, Development Sciences & Informatics

    - Built GLIT, a multimodal Graph Attention Network (GAT, PyTorch Geometric) for Drug-Induced Liver Injury (DILI) prediction, integrating ECFP molecular fingerprints (RDKit), OmniPath Protein-Protein Interaction (PPI) graphs, and L1000\/LINCS gene expression signatures with pretrained gene2vec embeddings; matched SOTA DILI prediction accuracy at significantly reduced parameter count.

    - Engineered a Knowledge Graph (Neo4j) and the GLIT GNN pipeline to generate gene expression signature-likes for drugs, enabling R&D teams to rapidly surface novel therapeutic signatures without manual literature search.

    - Developed a scalable document tokenization framework for ingestion into internal text-mining and NLP annotation pipelines, enabling high-quality training data generation for downstream informatics systems.

  ],
  [
    San Francisco, CA

    May 2021 – Jan 2022

  ],
)

#regular-entry(
  [
    #strong[Procter & Gamble], Advanced Analytics Co-Op, Consumer & Market Knowledge

    - Engineered high-performance predictive and explanatory models using parallel computing frameworks (Dask, Modin) to surface ecommerce dynamics, retailer behavior, and shopper trends for global Fabric Care brand teams.

    - Designed and maintained big data ETL pipelines on GCP (Python, Apache Airflow), increasing analyst operational efficiency by 1.5x and improving data availability for cross-functional marketing teams.

    - Introduced containerization, unit testing, and agile practices; raised codebase test coverage from 0\% to 70\%, reducing regression risk on production pipelines.

  ],
  [
    Cincinnati, OH

    Jan 2021 – May 2021

  ],
)

#regular-entry(
  [
    #strong[Bristol Myers Squibb], Data Engineering Intern

    - Built a multi-featured patent recommendation Plotly Dash application combining LeadMine chemical NER for entity extraction, sklearn cosine similarity ranking, and BERT embeddings, streamlining patent search and analysis workflow for bench scientists.

    - Implemented a random walk algorithm contributing to the CC-90009 AML trial data pipeline (C\#, AWS CI\/CD).

    - Engineered and maintained automated ETL pipelines with Python and Apache Airflow across datasets at varying scales.

    - Designed and maintained relational (PostgreSQL) and graph (Neo4j) database architectures supporting multiple internal R&D projects.

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

    Messiah SE, #strong[Sabharwal R], et al.

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
    #strong[Scholarly recommendation systems: a literature survey]

    Zhang Z, #strong[Sabharwal R], et al.

    #link("https://doi.org/10.1007/s10115-023-01901-x")[10.1007\/s10115-023-01901-x] (Knowledge and Information Systems)

  ],
  [
    June 2023

  ],
)

== Skills

#strong[Expert:] Python, R, SQL, PyTorch, Scikit-learn, Apache Airflow, Docker, Git\/GitHub CI\/CD, PostgreSQL, Neo4j

#strong[Proficient:] TensorFlow, Hugging Face Transformers, PyTorch Geometric, BigQuery, GCP, AWS, Azure, Apache Spark, Kubernetes

#strong[Familiar:] SAS, MATLAB, JavaScript

#strong[Core Methods:] Graph Neural Networks, Deep Transfer Learning, NLP\/LLMs, Bayesian Inference & UQ, Causal Inference, Survival Analysis, Recommendation Systems, ETL\/Data Engineering, CI\/CD
