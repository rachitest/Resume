
#import "@preview/fontawesome:0.5.0": fa-icon

#let name = "Rachit Sabharwal"
#let locale-catalog-page-numbering-style = context { "Rachit Sabharwal - Page " + str(here().page()) + " of " + str(counter(page).final().first()) + "" }
#let locale-catalog-last-updated-date-style = "Last updated in Jan 2025"
#let locale-catalog-language = "en"
#let design-page-size = "us-letter"
#let design-section-titles-font-size = 1.4em
#let design-colors-text = rgb(0, 0, 0)
#let design-colors-section-titles = rgb(0, 0, 0)
#let design-colors-last-updated-date-and-page-numbering = rgb(128, 128, 128)
#let design-colors-name = rgb(0, 0, 0)
#let design-colors-connections = rgb(0, 0, 0)
#let design-colors-links = rgb(0, 79, 144)
#let design-section-titles-bold = true
#let design-section-titles-line-thickness = 0.5pt
#let design-section-titles-font-size = 1.4em
#let design-section-titles-type = "with-parial-line"
#let design-section-titles-vertical-space-above = 0.5cm
#let design-section-titles-vertical-space-below = 0.3cm
#let design-section-titles-small-caps = false
#let design-links-use-external-link-icon = false
#let design-text-font-size = 10pt
#let design-text-leading = 0.6em
#let design-text-font-family = "New Computer Modern"
#let design-text-alignment = "left"
#let design-text-date-and-location-column-alignment = right
#let design-header-photo-width = 3.5cm
#let design-header-use-icons-for-connections = true
#let design-header-name-font-size = 30pt
#let design-header-name-bold = true
#let design-header-vertical-space-between-name-and-connections = 0.7cm
#let design-header-vertical-space-between-connections-and-first-section = 0.7cm
#let design-header-use-icons-for-connections = true
#let design-header-horizontal-space-between-connections = 0.5cm
#let design-header-separator-between-connections = ""
#let design-header-alignment = center
#let design-highlights-summary-left-margin = 0cm
#let design-highlights-bullet = "◦"
#let design-highlights-top-margin = 0.25cm
#let design-highlights-left-margin = 0.4cm
#let design-highlights-vertical-space-between-highlights = 0.25cm
#let design-highlights-horizontal-space-between-bullet-and-highlights = 0.5em
#let design-entries-vertical-space-between-entries = 1.2em
#let design-entries-date-and-location-width = 4.15cm
#let design-entries-allow-page-break-in-entries = true
#let design-entries-horizontal-space-between-columns = 0.1cm
#let design-entries-left-and-right-margin = 0.2cm
#let design-page-top-margin = 2cm
#let design-page-bottom-margin = 2cm
#let design-page-left-margin = 2cm
#let design-page-right-margin = 2cm
#let design-page-show-last-updated-date = true
#let design-page-show-page-numbering = true
#let design-links-underline = false
#let design-entry-types-education-entry-degree-column-width = 1cm
#let date = datetime.today()

// Metadata:
#set document(author: name, title: name + "'s CV", date: date)

// Page settings:
#set page(
  margin: (
    top: design-page-top-margin,
    bottom: design-page-bottom-margin,
    left: design-page-left-margin,
    right: design-page-right-margin,
  ),
  paper: design-page-size,
  footer: if design-page-show-page-numbering {
    text(
      fill: design-colors-last-updated-date-and-page-numbering,
      align(center, [_#locale-catalog-page-numbering-style _]),
      size: 0.9em,
    )
  } else {
    none
  },
  footer-descent: 0% - 0.3em + design-page-bottom-margin / 2,
)
// Text settings:
#let justify
#let hyphenate
#if design-text-alignment == "justified" {
  justify = true
  hyphenate = true
} else if design-text-alignment == "left" {
  justify = false
  hyphenate = false
} else if design-text-alignment == "justified-with-no-hyphenation" {
  justify = true
  hyphenate = false
}
#set text(
  font: design-text-font-family,
  size: design-text-font-size,
  lang: locale-catalog-language,
  hyphenate: hyphenate,
  fill: design-colors-text,
  // Disable ligatures for better ATS compatibility:
  ligatures: true,
)
#set par(
  spacing: 0pt,
  leading: design-text-leading,
  justify: justify,
)

// Highlights settings:
#let highlights(..content) = {
  list(
    ..content,
    marker: design-highlights-bullet,
    spacing: design-highlights-vertical-space-between-highlights,
    indent: design-highlights-left-margin,
    body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
  )
}
#show list: set list(
  marker: design-highlights-bullet,
  spacing: 0pt,
  indent: 0pt,
  body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
)

// Entry utilities:
#let three-col(
  left-column-width: 1fr,
  middle-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (auto, auto, auto),
) = [
  #block(
    grid(
      columns: (left-column-width, middle-column-width, right-column-width),
      column-gutter: design-entries-horizontal-space-between-columns,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #middle-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

#let two-col(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, auto),
  column-gutter: design-entries-horizontal-space-between-columns,
) = [
  #block(
    grid(
      columns: (left-column-width, right-column-width),
      column-gutter: column-gutter,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

// Main heading settings:
#let header-font-weight
#if design-header-name-bold {
  header-font-weight = 700
} else {
  header-font-weight = 400
}
#show heading.where(level: 1): it => [
  #set par(spacing: 0pt)
  #set align(design-header-alignment)
  #set text(
    weight: header-font-weight,
    size: design-header-name-font-size,
    fill: design-colors-name,
  )
  #it.body
  // Vertical space after the name
  #v(design-header-vertical-space-between-name-and-connections)
]

#let section-title-font-weight
#if design-section-titles-bold {
  section-title-font-weight = 700
} else {
  section-title-font-weight = 400
}

#show heading.where(level: 2): it => [
  #set align(left)
  #set text(size: (1em / 1.2)) // reset
  #set text(
    size: (design-section-titles-font-size),
    weight: section-title-font-weight,
    fill: design-colors-section-titles,
  )
  #let section-title = (
    if design-section-titles-small-caps [
      #smallcaps(it.body)
    ] else [
      #it.body
    ]
  )
  // Vertical space above the section title
  #v(design-section-titles-vertical-space-above, weak: true)
  #block(
    breakable: false,
    width: 100%,
    [
      #if design-section-titles-type == "moderncv" [
        #two-col(
          alignments: (right, left),
          left-column-width: design-entries-date-and-location-width,
          right-column-width: 1fr,
          left-content: [
            #align(horizon, box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles))
          ],
          right-content: [
            #section-title
          ]
        )

      ] else [
        #box(
          [
            #section-title
            #if design-section-titles-type == "with-parial-line" [
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ] else if design-section-titles-type == "with-full-line" [

              #v(design-text-font-size * 0.4)
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ]
          ]
        )
      ]
     ] + v(1em),
  )
  #v(-1em)
  // Vertical space after the section title
  #v(design-section-titles-vertical-space-below - 0.5em)
]

// Links:
#let original-link = link
#let link(url, body) = {
  body = [#if design-links-underline [#underline(body)] else [#body]]
  body = [#if design-links-use-external-link-icon [#body#h(design-text-font-size/4)#box(
        fa-icon("external-link", size: 0.7em),
        baseline: -10%,
      )] else [#body]]
  body = [#set text(fill: design-colors-links);#body]
  original-link(url, body)
}

// Last updated date text:
#if design-page-show-last-updated-date {
  let dx
  if design-section-titles-type == "moderncv" {
    dx = 0cm
  } else {
    dx = -design-entries-left-and-right-margin
  }
  place(
    top + right,
    dy: -design-page-top-margin / 2,
    dx: dx,
    text(
      [_#locale-catalog-last-updated-date-style _],
      fill: design-colors-last-updated-date-and-page-numbering,
      size: 0.9em,
    ),
  )
}

#let connections(connections-list) = context {
  let list-of-connections = ()
  let separator = (
    h(design-header-horizontal-space-between-connections / 2, weak: true)
      + design-header-separator-between-connections
      + h(design-header-horizontal-space-between-connections / 2, weak: true)
  )
  let starting-index = 0
  while (starting-index < connections-list.len()) {
    let left-sum-right-margin
    if type(page.margin) == "dictionary" {
      left-sum-right-margin = page.margin.left + page.margin.right
    } else {
      left-sum-right-margin = page.margin * 4
    }

    let ending-index = starting-index + 1
    while (
      measure(connections-list.slice(starting-index, ending-index).join(separator)).width
        < page.width - left-sum-right-margin
    ) {
      ending-index = ending-index + 1
      if ending-index > connections-list.len() {
        break
      }
    }
    if ending-index > connections-list.len() {
      ending-index = connections-list.len()
    }
    list-of-connections.push(connections-list.slice(starting-index, ending-index).join(separator))
    starting-index = ending-index
  }
  set text(fill: design-colors-connections)
  set par(leading: design-text-leading*1.7, justify: false)
  align(list-of-connections.join(linebreak()), design-header-alignment)
  v(design-header-vertical-space-between-connections-and-first-section - design-section-titles-vertical-space-above)
}

#let three-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (left, auto, right),
) = (
  if design-section-titles-type == "moderncv" [
    #three-col(
      left-column-width: right-column-width,
      middle-column-width: left-column-width,
      right-column-width: 1fr,
      left-content: right-content,
      middle-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      right-content: middle-content,
      alignments: (design-text-date-and-location-column-alignment, left, auto),
    )
  ] else [
    #block(
      [
        #three-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          middle-content: middle-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let two-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, design-text-date-and-location-column-alignment),
  column-gutter: design-entries-horizontal-space-between-columns,
) = (
  if design-section-titles-type == "moderncv" [
    #two-col(
      left-column-width: right-column-width,
      right-column-width: left-column-width,
      left-content: right-content,
      right-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      alignments: (design-text-date-and-location-column-alignment, auto),
    )
  ] else [
    #block(
      [
        #two-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let one-col-entry(content: "") = [
  #let left-space = design-entries-left-and-right-margin
  #if design-section-titles-type == "moderncv" [
    #(left-space = left-space + design-entries-date-and-location-width + design-entries-horizontal-space-between-columns)
  ]
  #block(
    [#set par(spacing: design-text-leading); #content],
    breakable: design-entries-allow-page-break-in-entries,
    inset: (
      left: left-space,
      right: design-entries-left-and-right-margin,
    ),
    width: 100%,
  )
]

= Rachit Sabharwal

// Print connections:
#let connections-list = (
  [#fa-icon("location-dot", size: 0.9em) #h(0.05cm)10211 Camden Garden Lane, Katy, Texas, 77494],
  [#box(original-link("mailto:rachit-sabharwal@outlook.com")[#fa-icon("envelope", size: 0.9em) #h(0.05cm)rachit-sabharwal\@outlook.com])],
  [#box(original-link("tel:+1-585-281-1928")[#fa-icon("phone", size: 0.9em) #h(0.05cm)\(585\) 281-1928])],
  [#box(original-link("https://www.rachitsabharwal.me/")[#fa-icon("link", size: 0.9em) #h(0.05cm)www.rachitsabharwal.me])],
  [#box(original-link("https://github.com/rachitest")[#fa-icon("github", size: 0.9em) #h(0.05cm)rachitest])],
)
#connections(connections-list)



== Education

// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[The University of California, Berkeley]

#emph[Certificate in Software Development and Programming]
  ],
  right-content: [
    #emph[Berkeley, CA]

#emph[June 2023 - present]
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[The University of Texas Health Science Center at Houston]

#emph[Doctor of Philosophy in Biostatistics]
  ],
  right-content: [
    #emph[Houston, TX]

#emph[Aug 2022 - present]
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #v(design-highlights-top-margin);#highlights([Advanced Certificate in Data Science],)
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[The University of Texas Health Science Center at Houston]

#emph[Master of Science in Biostatistics]
  ],
  right-content: [
    #emph[Houston, TX]

#emph[Jan 2020 - May 2022]
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #v(design-highlights-top-margin);#highlights([Thesis — BioRec: A Biomedical Recommendation System for Academic Conferences and Journals],[Certificate in Data Science],)
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[University of Rochester]

#emph[Bachelor of Science in Environmental Health]
  ],
  right-content: [
    #emph[Rochester, NY]

#emph[Sept 2014 - May 2018]
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #v(design-highlights-top-margin);#highlights([Minor in Psychology],)
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)



== Experience

#two-col-entry(
  left-content: [
    #strong[Biostatistics and Data Science - Graduate Research Assistant \(Doctoral\)]

#emph[The University of Texas Health Science Center at Houston, School of Public Health]
  ],
  right-content: [
    #emph[Houston, TX]

#emph[Sept 2022 - Oct 2024]
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Design and implement ETL pipelines for all sizes of datasets \(small, medium, and large\), ensuring efficient data munging and integration],[Establish good DevOps practices, architect repository structures, author comprehensive documentation, and implement CI/CD pipelines to streamline development and testing processes],[Apply a mix of classical statistical models and advanced machine learning techniques for comprehensive data analysis on varied topics including — vaccine non-response, serostatus, pediatric comorbidities arising from Covid-19, etc.],[Develop a weekly report generation pipeline incorporating CI/CD, ensuring seamless integration of new data and automated report updates],[Plan and enact a test suite for both code and data spanning the entire data engineering and data science life-cycle from data ingestion to report generation],[Author and edit multiple manuscripts, contributing to the publication of at least four peer-reviewed journal articles],[Utilize R \(tidyverse, tidymodels, data.table, gt\), Python \(polars, pandas, duckdb, statsmodels, scikit-learn, PyTorch, TensorFlow\), Quarto, SQLite, Git, Github, and Gitlab for various projects],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Biostatistics and Data Science - Graduate Research Assistant \(Master's\)]

#emph[The University of Texas Health Science Center at Houston, School of Public Health]
  ],
  right-content: [
    #emph[Houston, TX]

#emph[Feb 2020 - Aug 2022]
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Performed data cleaning, wrangling and integration on medium-sized datasets containing PII using Microsoft Excel, Python, and R],[Maintained Covid-19 dashboards using Python and Tableau for the #link("https://sph.uth.edu/projects/covid19/")[Texas Covid-19 Dashboard Project]],[Created, deployed, and maintained accessible and responsive web apps on multiple platforms \(Streamlit and Heroku\) for academic conference recommender systems],[Built and serviced high content ETL pipelines using Python, R, and Cron to feed recommender systems and Covid-19 dashboards],[Created recommendation systems models using Python and Scikit-Surprise],[Conducted literature reviews on research concerning Recommendation Systems, and Natural Language Processing models such as word2vec and doc2vec],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Research and Early Development, Development Sciences & Informatics - Informatics Intern]

#emph[Genentech]
  ],
  right-content: [
    #emph[San Francisco, CA]

#emph[May 2021 - Jan 2022]
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Used Deep Transfer Learning via PyTorch and Raytune to create a neural network to predict adverse events for drugs],[Created a Knowledge Graph with Neo4j and a Graph Neural Network using NetworkX and PyTorch to generate gene expression signature-likes for drugs],[Developed a framework for the tokenization of internal documents for ingestion into text-mining application],[Compared work flow management/ETL frameworks \(Airflow vs. Prefect vs. Luigi\) for use with all NLP pipelines and presented the results],[Conducted literature reviews on research concerning Graph Neural Networks, Transfer Learning, and Natural Language Generation],[Successfully presented literature review and experimental results to both technical and non-technical stakeholders],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Consumer & Market Knowledge - Advanced Analytics Co-Op]

#emph[Procter & Gamble]
  ],
  right-content: [
    #emph[Cincinnati, OH]

#emph[Jan 2021 - May 2021]
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Created predictive models, analytics, and visualizations that facilitated a deep understanding of consumer and shopper behaviors],[Used parallel computing \(Dask and Modin\) to develop both predictive and explanatory models enabling insights into market trends and retailer behavior],[Created and serviced big data ETL pipelines utilizing the Google Cloud Platform, Python, and Apache Airflow],[Upgraded teams nascent DevOps by implementing unit-testing via Pytest and Great Expectations, containerization via Poetry and Docker/Kubernetes, and agile via Jira and Confluence],[Successfully presented experimental results and visualizations to both technical and non-technical stakeholders],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Biostatistics and Data Science - Teaching Assistant]

#emph[The University of Texas Health Science Center at Houston, School of Public Health]
  ],
  right-content: [
    #emph[Houston, TX]

#emph[Sept 2020 - Dec 2020]
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Teaching assistant for PH 1998 — Introduction to Statistical and Data Science Programming],[Assisted in instructing a class of 20 students both individually and in groups],[Provided after-class instruction, individually and in groups, including hands-on technical demonstrations for both curricular and extracurricular topics],[Topics taught included \(but were not limited to\) — Data Types and Structures \(R & Python\), Loops \(R & Python\), Functional Programming \(R & Python\), NumPy \(Python\), Pandas \(Python\), Matplotlib \(Python\), Tidyverse \(R\), GGPlot2 \(R\)],[Created and assessed all assignments and exams],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Data Engineering Intern]

#emph[Bristol Myers Squibb]
  ],
  right-content: [
    #emph[San Francisco, CA]

#emph[June 2020 - Aug 2020]
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Utilized Python, HTML, CSS, and Javascript in creating a multifeatured patent recommendation app to significantly improve scientists' workflow],[Developed and serviced ETL pipelines using Python and Apache Airflow],[Performed data cleaning and data wrangling with R and Python on multiple datasets of varying sizes \(small, medium, and large\)],[Designed and maintained both relational and graph databases in PostgreSQL and Neo4j],[Conducted literature reviews on research concerning Recommendation Systems, Information Retrieval Systems, and BERT and BERT variations \(BioBERT, SciBERT, etc.\)],[Successfully presented literature review and experimental results to both technical and non-technical stakeholders],)
  ],
)



== Honors and Awards

#one-col-entry(
  content: [#strong[Delta Omega Honors Society:] Alpha Iota Chapter]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Tau Sigma Honors Society:] Beta Rho Chapter]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Rochester Innovation Grant:] University of Rochester]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Innovation and Creativity Award:] Rochester Institute of Technology]
)


== Certifications

#two-col-entry(
  left-content: [
    #link("https://www.citiprogram.org/verify/?w7ac3ddd5-04e8-4d45-baa3-5e3b0a8a9cd2-67307097")[#strong[Good Clinical Practice \(GCP\)]]

    
  ],
  right-content: [
    #emph[CITI Program]

#emph[Jan 2025]
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://www.citiprogram.org/verify/?wf64927b0-9408-4c4f-8421-642b22d809f9-54965007")[#strong[Group 1 Biomedical Researcher and Key Personnel]]

    
  ],
  right-content: [
    #emph[CITI Program]

#emph[Mar 2023]
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://www.citiprogram.org/verify/?wfb60d2d6-b559-499a-b7f9-c654c0bc3890-50620082")[#strong[Group 2 Social and Behavioral Researchers and Key Personnel]]

    
  ],
  right-content: [
    #emph[CITI Program]

#emph[Mar 2023]
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://www.citiprogram.org/verify/?wfb60d2d6-b559-499a-b7f9-c654c0bc3890-50620082")[#strong[Data Acquisition and Management]]

    
  ],
  right-content: [
    #emph[CITI Program]

#emph[Oct 2020]
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://www.youracclaim.com/badges/57b7fb2b-6557-40a9-b890-e48bd0bc39f3/linked_in_profile")[#strong[Big Data Foundations - Level 1]]

    
  ],
  right-content: [
    #emph[IBM]

#emph[May 2020]
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://www.youracclaim.com/badges/a050dad8-e403-4649-9f5c-c37b47adc4ed/linked_in_profile")[#strong[Big Data Foundations - Level 2]]

    
  ],
  right-content: [
    #emph[IBM]

#emph[May 2020]
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://www.coursera.org/account/accomplishments/certificate/S9NZUETKR2V8")[#strong[Data Science Math Skills]]

    
  ],
  right-content: [
    #emph[Duke University \(Coursera\)]

#emph[May 2020]
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://www.coursera.org/account/accomplishments/certificate/P26CB65MF373")[#strong[AWS Machine Learning]]

    
  ],
  right-content: [
    #emph[AWS \(Coursera\)]

#emph[May 2020]
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://www.coursera.org/account/accomplishments/certificate/BX7475NG429B")[#strong[Google Cloud IAM and Networking]]

    
  ],
  right-content: [
    #emph[Google Cloud \(Coursera\)]

#emph[May 2020]
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://www.coursera.org/account/accomplishments/certificate/2RXJGRQ7GTQS")[#strong[Machine Learning]]

    
  ],
  right-content: [
    #emph[Stanford University \(Coursera\)]

#emph[May 2020]
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://www.credly.com/badges/d4256ba1-2517-42ee-ac4f-4abd3efbf43b/linked_in_profile")[#strong[Hadoop Foundations - Level 1]]

    
  ],
  right-content: [
    #emph[IBM]

#emph[May 2020]
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://www.credly.com/badges/adcdee7c-1e56-4e41-a4fe-1cc21059d638/linked_in_profile")[#strong[Spark - Level 1]]

    
  ],
  right-content: [
    #emph[IBM]

#emph[May 2020]
  ],
)



== Publications

#two-col-entry(
  left-content: [
    #strong[Factors associated with elevated SARS-CoV-2 immune response in children and adolescents]

  ],
  right-content: [
    Aug 2024
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);Messiah SE, Abbas R, Bergqvist E, Swartz MD, Talebi Y, #strong[Sabharwal R], Han H, Valerio-Shewmaker MA, DeSantis SM, Yaseen A, Gandhi HA, Amavisca XF, Ross JA, Padilla LN, Gonzalez MO, Wu L, Silberman MA, Lakey D, Shuford JA, Pont SJ, Boerwinkle E

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.3389/fped.2024.1393321")[10.3389/fped.2024.1393321] (Frontiers in Pediatrics)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Baseline characteristics of SARS-CoV-2 vaccine non-responders in a large population-based sample]

  ],
  right-content: [
    May 2024
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);Yaseen A, DeSantis SM, #strong[Sabharwal R], Talebi Y, Swartz MD, Zhang S, Leon Novelo L, Pinzon-Gomez CL, Messiah SE, Valerio-Shewmaker M, Kohl HW 3rd, Ross J, Lakey D, Shuford JA, Pont SJ, Boerwinkle E

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.1371/journal.pone.0303420")[10.1371/journal.pone.0303420] (PLoS One)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[An Interactive Online Dashboard with COVID-19 Trends and Data Analysis in Northeast and South Texas]

  ],
  right-content: [
    Apr 2024
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);Zhang Z, #strong[Sabharwal R], Lee M, Zhang K, McGaha P, Crum M, Bauer C, Fisher-Hoch SP, McCormick JB, Reininger BM, Thomas S, Guajardo E, Pinon D, Yaseen A

#v(design-highlights-top-margin - design-text-leading)#link("https://research.ebsco.com/linkprocessor/plink?id=894625e1-7146-30bf-aa2c-9f5637dac41e")[research.ebsco.com/linkprocessor/plink?id=894625e1-7146-30bf-aa2c-9f5637dac41e] (Texas Public Health Journal)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Long-term immune response to SARS-CoV-2 infection and vaccination in children and adolescents]

  ],
  right-content: [
    Oct 2023
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);Messiah SE, Talebi Y, Swartz MD, #strong[Sabharwal R], Han H, Bergqvist E, Kohl HW 3rd, Valerio-Shewmaker M, DeSantis SM, Yaseen A, Kelder SH, Ross J, Padilla LN, Gonzalez MO, Wu L, Lakey D, Shuford JA, Pont SJ, Boerwinkle E

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.1038/s41390-023-02857-y")[10.1038/s41390-023-02857-y] (Pediatric Research)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Scholarly recommendation systems: a literature survey]

  ],
  right-content: [
    June 2023
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);Zhang Z, Patra BG, Yaseen A, Zhu J, #strong[Sabharwal R], Roberts K, Cao T, Wu H

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.1007/s10115-023-01901-x")[10.1007/s10115-023-01901-x] (Knowledge and Information Systems)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Data Cleaning for eCommerce: Standardizing Data Handling Practices for eCommerce Datasets]

  ],
  right-content: [
    May 2021
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);#strong[Sabharwal R]

#v(design-highlights-top-margin - design-text-leading)Procter & Gamble, Internal White Paper])



== Skills

#one-col-entry(
  content: [#strong[Languages:] English \(Native/Bilingual\), Hindi \(Native/Bilingual\), French \(Intermediate\)]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Work Authorization:] US Citizenship, Canadian Citizenship]
)


== Technical Skills

#one-col-entry(
  content: [#strong[Machine Learning:] Scikit-learn, TidyModels, Raytune, Optuna, Pytorch, Tensorflow, Huggingface, JAX]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Programming Languages:] Python, R, SAS, MATLAB, Javascript, C, Java, HTML, CSS]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Databases:] RDBMS \(PostgreSQL, SQLite, MySQL\), NoSQL DBMS \(MongoDB, Elasticsearch, Neo4J\), BigQuery]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Cloud and Distributed Computing:] AWS \(AWS HPC\), GCP, Azure, Spark, Hadoop, Slurm, On-Prem HPC]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[DevOps:] Git, GitHub, GitLab, Docker, GitHub/GitLab CI/CD, Jenkins, Kubernetes, Jira, Confluence]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Workflow Orchestration:] Airflow, Prefect, Cron, Luigi]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Frameworks and Platforms:] Streamlit, FastAPI, Django, Flask, Heroku, Replit, Great Expectations, PyTest]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Tooling:] VSCode, RStudio, Quarto, Jupyter, PyCharm, CLion, IntelliJ IDEA, Confluence, Slack, Tableau, Power BI, Stata, DBeaver]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Operating Systems:] Windows, Linux \(Ubuntu, and Mint\), MacOS]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[General Computing:] Microsoft Office, Google Workspace]
)


