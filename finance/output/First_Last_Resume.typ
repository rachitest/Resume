// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Rachit Sabharwal",
  title: "Rachit Sabharwal - CV",
  footer: context { [Rachit Sabharwal - Page #str(here().page()) of #str(counter(page).final().first())] },
  top-note: [ Last updated in Mar 2026 ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 1cm,
  page-bottom-margin: 1cm,
  page-left-margin: 1cm,
  page-right-margin: 1cm,
  page-show-footer: true,
  page-show-top-note: false,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "left",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "New Computer Modern",
  typography-font-family-name: "New Computer Modern",
  typography-font-family-headline: "New Computer Modern",
  typography-font-family-connections: "New Computer Modern",
  typography-font-family-section-titles: "New Computer Modern",
  typography-font-size-body: 9pt,
  typography-font-size-name: 24pt,
  typography-font-size-headline: 9pt,
  typography-font-size-connections: 9pt,
  typography-font-size-section-titles: 1.4em,
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
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: true,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: true,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "◦" ,
  entries-highlights-nested-bullet:  "◦" ,
  entries-highlights-space-left: 0.4cm,
  entries-highlights-space-above: 0.25cm,
  entries-highlights-space-between-items: 0.25cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 3,
    day: 28,
  ),
)


= Rachit Sabharwal

#connections(
  [#connection-with-icon("location-dot")[Cypress, Texas]],
  [#link("tel:+1-585-281-1928", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[(585) 281-1928]]],
  [#link("https://github.com/rachitest", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[github.com\/rachitest]]],
)


== Professional Summary

Data Scientist and Ph.D. Candidate with a proven track record of translating complex data into actionable business solutions. Seeking to leverage expertise in predictive modeling, advanced analytics, and cross-functional leadership to drive strategic decision-making and operational efficiency.

== Education

#education-entry(
  [
    #strong[The University of Texas Health Science Center at Houston]

    #emph[Doctor of Philosophy in Biostatistics]

  ],
  [
    #emph[Houston, TX]

    #emph[Aug 2022 – present]

  ],
  main-column-second-row: [
    - Minors: Epidemiology, Health Economics

    - Certificates: Advanced Data Science

  ],
)

#education-entry(
  [
    #emph[Master of Science in Biostatistics]

    - Certificates: Data Science

  ],
  [
    #emph[Houston, TX]

    #emph[Jan 2020 – May 2022]

  ],
  main-column-second-row: [
  ],
)

#education-entry(
  [
    #strong[The University of California, Berkeley]

    #emph[Certificate in Software Development and Programming]

  ],
  [
    #emph[Berkeley, CA]

    #emph[June 2023 – Apr 2025]

  ],
  main-column-second-row: [
  ],
)

#education-entry(
  [
    #strong[University of Rochester]

    #emph[Bachelor of Science in Environmental Health]

  ],
  [
    #emph[Rochester, NY]

    #emph[Sept 2014 – May 2018]

  ],
  main-column-second-row: [
  ],
)

== Experience

#regular-entry(
  [
    #strong[Machine Learning R&D Intern]

    #emph[The Dow Chemical Company]

  ],
  [
    #emph[Lake Jackson, TX]

    #emph[May 2025 – Aug 2025]

  ],
  main-column-second-row: [
    - Generated \$15M in annual cost savings by developing an R application that automated 50\% of enterprise-wide Life Cycle Assessment (LCA) workflows.

    - Improved predictive model reliability by 20-30\% through the development and implementation of a novel Bayesian Uncertainty Quantification (UQ) framework for real-world simulation data.

  ],
)

#regular-entry(
  [
    #strong[Research and Early Development, Development Sciences & Informatics - Informatics Intern]

    #emph[Genentech]

  ],
  [
    #emph[San Francisco, CA]

    #emph[May 2021 – Jan 2022]

  ],
  main-column-second-row: [
    - Accelerated drug safety screening by building a deep neural network to predict adverse drug events, improving early-stage toxicity detection capabilities.

    - Mapped complex drug-gene interactions by engineering a scalable Knowledge Graph and Graph Neural Network, enabling faster identification of novel therapeutic signatures.

    - Streamlined internal data discovery by developing a document tokenization framework for a scalable text-mining application.

  ],
)

#regular-entry(
  [
    #strong[Consumer & Market Knowledge - Advanced Analytics Co-Op]

    #emph[Procter & Gamble]

  ],
  [
    #emph[Cincinnati, OH]

    #emph[Jan 2021 – May 2021]

  ],
  main-column-second-row: [
    - Drove strategic marketing decisions by developing predictive models and interactive visualizations to map consumer and shopper behavioral trends.

    - Unlocked new insights into market dynamics and retailer behavior by engineering high-performance predictive models using parallel computing frameworks.

    - Ensured high-availability data access for analytics teams by architecting and maintaining big data ETL pipelines on Google Cloud Platform.

  ],
)

#regular-entry(
  [
    #strong[Data Engineering Intern]

    #emph[Bristol Myers Squibb]

  ],
  [
    #emph[San Francisco, CA]

    #emph[June 2020 – Aug 2020]

  ],
  main-column-second-row: [
    - Significantly improved R&D workflow efficiency by full-stack developing a multi-featured patent recommendation application.

    - Optimized data infrastructure by developing and maintaining automated ETL pipelines for diverse, multi-scale datasets.

    - Enhanced data querying performance and relationship mapping by designing robust relational (PostgreSQL) and graph (Neo4j) database architectures.

  ],
)

== Selected Publications

#regular-entry(
  [
    #strong[Trust and Uncertainty Quantification in Machine Learning Models Under Measurement Error]

  ],
  [
    Aug 2025

  ],
  main-column-second-row: [
    #strong[Sabharwal R]

    (The Dow Chemical Company, Internal White Paper)

  ],
)

#regular-entry(
  [
    #strong[An Interactive Online Dashboard with COVID-19 Trends and Data Analysis in Northeast and South Texas]

  ],
  [
    Apr 2024

  ],
  main-column-second-row: [
    Zhang Z, #strong[Sabharwal R], Lee M, Zhang K, McGaha P, Crum M, Bauer C, Fisher-Hoch SP, McCormick JB, Reininger BM, Thomas S, Guajardo E, Pinon D, Yaseen A

    #link("https://research.ebsco.com/linkprocessor/plink?id=894625e1-7146-30bf-aa2c-9f5637dac41e")[research.ebsco.com\/linkprocessor\/plink?id=894625e1-7146-30bf-aa2c-9f5637dac41e] (Texas Public Health Journal)

  ],
)

#regular-entry(
  [
    #strong[Biorec: A Biomedical Recommendation System for Academic Conferences and Journals]

  ],
  [
    Apr 2022

  ],
  main-column-second-row: [
    #strong[Sabharwal, R]

    (UTHealth, Technical Project)

  ],
)

#regular-entry(
  [
    #strong[Data Cleaning for eCommerce: Standardizing Data Handling Practices for eCommerce Datasets]

  ],
  [
    May 2021

  ],
  main-column-second-row: [
    #strong[Sabharwal R]

    (Procter & Gamble, Internal White Paper)

  ],
)

== Skills

#strong[Core Competencies:] Predictive Analytics, Machine Learning, Real-World Evidence (RWE), Data Strategy, Cross-Functional Leadership, Rapid Prototyping

#strong[Programming & Cloud:] Python, R, SQL, SAS, MATLAB, Google Cloud Platform (GCP), AWS, Azure, Apache Spark

#strong[Machine Learning & AI:] Scikit-learn, PyTorch, TensorFlow, Huggingface, Raytune, NLP, Graph Neural Networks

#strong[Data Engineering & DevOps:] Apache Airflow, Docker, Git\/GitHub CI\/CD, PostgreSQL, Neo4J, BigQuery, Kubernetes
