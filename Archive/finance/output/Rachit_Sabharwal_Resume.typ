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

Data Scientist and Ph.D. Candidate with a proven track record of translating complex data into actionable business solutions. Seeking to leverage expertise in predictive modeling, advanced analytics, and cross-functional leadership to drive strategic decision-making and operational efficiency.

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
    #strong[The University of California Berkeley], Software Development and Programming

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
    #strong[The Dow Chemical Company], Machine Learning R&D Intern

    - Enabled \~\$15M in annual cost savings by developing an R application that automated 50\% of enterprise-wide Life Cycle Assessment (LCA) workflows for cross-functional teams.

    - Improved predictive model reliability by 20-30\% by designing a Bayesian Uncertainty Quantification (UQ) framework, enabling leadership to make data-driven decisions on real-world simulations.

  ],
  [
    Lake Jackson, TX

    May 2025 – Aug 2025

  ],
)

#regular-entry(
  [
    #strong[Genentech], Informatics R&D Intern

    - Accelerated drug safety screening pipelines by building a deep neural network to predict adverse drug events, directly improving early-stage toxicity detection capabilities.

    - Engineered a scalable Knowledge Graph and Graph Neural Network to map complex drug-gene interactions, empowering R&D teams to rapidly identify novel therapeutic signatures.

    - Streamlined internal data discovery for enterprise users by developing a scalable document tokenization framework for text-mining applications.

  ],
  [
    San Francisco, CA

    May 2021 – Jan 2022

  ],
)

#regular-entry(
  [
    #strong[Procter & Gamble], Consumer & Market Knowledge - Advanced Analytics Co-Op

    - Supported data acquisition strategies by developing explanatory models that delivered actionable shopper insights and market trends to global brand teams within the Fabric Care portfolio.

    - Advised ecommerce ad placement strategies by engineering high-performance predictive models using parallel computing frameworks to analyze ecommerce dynamics and retailer behavior.

    - Developed and maintained big data ETL pipelines on Google Cloud Platform (GCP), ensuring high-availability data access for cross-functional analytics and marketing teams.

  ],
  [
    Cincinnati, OH

    Jan 2021 – May 2021

  ],
)

#regular-entry(
  [
    #strong[Bristol Myers Squibb], Data Engineering Intern

    - Improved cross-functional R&D workflow efficiency by full-stack developing a multi-featured patent recommendation application used by internal scientists.

    - Optimized team data infrastructure by developing automated ETL pipelines and designing robust relational (PostgreSQL) and graph (Neo4j) database architectures for multi-scale datasets.

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
    #strong[Biorec: A Biomedical Recommendation System for Academic Conferences and Journals]

    #strong[Sabharwal, R]

    (UTHealth, Technical Project)

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

#strong[Core Competencies:] Predictive Analytics, Machine Learning, Real-World Evidence (RWE), Data Strategy, Cross-Functional Leadership, Rapid Prototyping

#strong[Programming & Cloud:] Python, R, SQL, SAS, MATLAB, Google Cloud Platform (GCP), AWS, Azure, Apache Spark

#strong[Machine Learning & AI:] Scikit-learn, PyTorch, TensorFlow, Huggingface, Raytune, NLP, Graph Neural Networks

#strong[Data Engineering & DevOps:] Apache Airflow, Docker, Git\/GitHub CI\/CD, PostgreSQL, Neo4J, BigQuery, Kubernetes
