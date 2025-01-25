
#import "@preview/fontawesome:0.5.0": fa-icon

#let name = "Rachit Sabharwal"
#let locale-catalog-page-numbering-style = context { "Rachit Sabharwal - Page " + str(here().page()) + " of " + str(counter(page).final().first()) + "" }
#let locale-catalog-last-updated-date-style = "Last updated in Jan 2025"
#let locale-catalog-language = "en"
#let design-page-size = "us-letter"
#let design-section-titles-font-size = 1.4em
#let design-colors-text = rgb(0, 0, 0)
#let design-colors-section-titles = rgb(0, 79, 144)
#let design-colors-last-updated-date-and-page-numbering = rgb(128, 128, 128)
#let design-colors-name = rgb(0, 79, 144)
#let design-colors-connections = rgb(0, 79, 144)
#let design-colors-links = rgb(0, 79, 144)
#let design-section-titles-bold = false
#let design-section-titles-line-thickness = 0.15cm
#let design-section-titles-font-size = 1.4em
#let design-section-titles-type = "moderncv"
#let design-section-titles-vertical-space-above = 0.55cm
#let design-section-titles-vertical-space-below = 0.3cm
#let design-section-titles-small-caps = false
#let design-links-use-external-link-icon = false
#let design-text-font-size = 9pt
#let design-text-leading = 0.6em
#let design-text-font-family = "XCharter"
#let design-text-alignment = "justified"
#let design-text-date-and-location-column-alignment = right
#let design-header-photo-width = 3.5cm
#let design-header-use-icons-for-connections = true
#let design-header-name-font-size = 25pt
#let design-header-name-bold = false
#let design-header-vertical-space-between-name-and-connections = 0.7cm
#let design-header-vertical-space-between-connections-and-first-section = 0.7cm
#let design-header-use-icons-for-connections = true
#let design-header-horizontal-space-between-connections = 0.5cm
#let design-header-separator-between-connections = ""
#let design-header-alignment = left
#let design-highlights-summary-left-margin = 0cm
#let design-highlights-bullet = "•"
#let design-highlights-top-margin = 0.25cm
#let design-highlights-left-margin = 0cm
#let design-highlights-vertical-space-between-highlights = 0.19cm
#let design-highlights-horizontal-space-between-bullet-and-highlights = 0.3em
#let design-entries-vertical-space-between-entries = 0.4cm
#let design-entries-date-and-location-width = 3.65cm
#let design-entries-allow-page-break-in-entries = true
#let design-entries-horizontal-space-between-columns = 0.4cm
#let design-entries-left-and-right-margin = 0cm
#let design-page-top-margin = 2cm
#let design-page-bottom-margin = 2cm
#let design-page-left-margin = 2cm
#let design-page-right-margin = 2cm
#let design-page-show-last-updated-date = true
#let design-page-show-page-numbering = true
#let design-links-underline = true
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



== Technical Skills

#one-col-entry(
  content: [#[*Machine Learning:*] Scikit-learn, Pytorch, Tensorflow, Transfer Learning, LLMs \(Gemini, Haiku, o1\), Graph NNs \(PyG\), Reinforcement Learning \(OpenAI Gymnasium\)]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#[*Programming Languages:*] Python, R, Javascript]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#[*Databases:*] RDBMS \(PostgreSQL, SQLite, MySQL\), NoSQL DBMS \(MongoDB, Elasticsearch, Neo4J\), BigQuery]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#[*Cloud and Distributed Computing:*] AWS, GCP, Azure, On-Prem HPC]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#[*DevOps:*] Git, GitHub, GitLab, Docker, GitHub/GitLab CI/CD, Jenkins]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#[*Workflow Orchestration:*] Airflow, Prefect, Cron]
)


== Relevant Experience

#two-col-entry(
  left-content: [
    #[*Biostatistics and Data Science - Graduate Research Assistant \(Doctoral\)*], The University of Texas Health Science Center at Houston, School of Public Health -- Houston, TX
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Established DevOps practices, architected repository structures, and implemented CI/CD pipelines. Designed and implemented ETL pipelines for datasets of various sizes, achieving a #[*24x speed increase over prior solution leading to faster model iteration and deliverable generation.*]],[Applied statistical models and machine learning techniques for data analysis on vaccine non-response and Covid-19 pediatric comorbidities. #[*Contributed to the publishing of three peer-reviewed articles, with two more under review.*]],[Developed a weekly report generation pipeline with CI/CD, ensuring seamless integration of new data. Planned and enacted a comprehensive test suite, #[*increasing team lead confidence and reducing publishing turnaround times.*]],)
  ],
  right-content: [
    Sept 2022 - Oct 2024
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #[*Research and Early Development, Development Sciences & Informatics - Informatics Intern*], Genentech -- San Francisco, CA
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Contributed to the development of frameworks for an in-house data annotation tool, utilizing advanced deep learning NLP models and custom processing pipelines. Created a efficient document tokenization framework #[*allowing for fast and high-quality data annotation for NLP model building*] and downstream informatics systems.],[Engineered a neural network using deep transfer learning, to predict adverse drug events. Focusing on Drug-Induced Liver Injury created a #[*low parameter model that matched the prediction accuracy of the SOTA model.*]],[Created a Knowledge Graph with Neo4j and a Graph Neural Network using NetworkX and PyTorch to generate gene expression signature-likes for drugs. Began the creation of a knowledge repository — an accessible data source which #[*reduced the need to manually sift through dense primary sources.*]],)
  ],
  right-content: [
    May 2021 - Jan 2022
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #[*Data Engineering Intern*], Bristol Myers Squibb -- San Francisco, CA
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Developed a multifeatured patent recommendation web application. The application implemented a mix of classical NLP algorithms \(TF-IDF, BM 25\) and deep learning algorithms \(BERT\). #[*Improved bench scientists' productivity by streamlining patent search and analysis workflow.*]],[Engineered and maintained performant ETL pipelines with Python and Apache Airflow. Undertook extensive data cleaning and data wrangling on datasets of varying sizes \(small, medium, and large\) #[*ensuring data quality and readiness for analysis at a high velocity.*]],[Designed and maintained robust relational and graph databases in PostgreSQL and Neo4j, #[*optimizing data storage and retrieval to support various internal projects and analyses.*]],)
  ],
  right-content: [
    June 2020 - Aug 2020
  ],
)



== Education

// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #[*The University of California, Berkeley*], Certificate in Software Development and Programming -- Berkeley, CA

    
  ],
  right-content: [
    June 2023 - present
  ],
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #[*The University of Texas Health Science Center at Houston*], Doctor of Philosophy in Biostatistics -- Houston, TX
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Advanced Certificate in Data Science],)
  ],
  right-content: [
    Aug 2022 - present
  ],
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #[*The University of Texas Health Science Center at Houston*], Master of Science in Biostatistics -- Houston, TX
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Thesis — BioRec: A Biomedical Recommendation System for Academic Conferences and Journals],[Certificate in Data Science],)
  ],
  right-content: [
    Jan 2020 - May 2022
  ],
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #[*University of Rochester*], Bachelor of Science in Environmental Health -- Rochester, NY
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Minor in Psychology],)
  ],
  right-content: [
    Sept 2014 - May 2018
  ],
)



== Publications

#two-col-entry(
  left-content: [
    #[*Factors associated with elevated SARS-CoV-2 immune response in children and adolescents*]

  #v(-design-text-leading)
#v(design-highlights-top-margin);Messiah SE, Abbas R, Bergqvist E, Swartz MD, Talebi Y, #[*Sabharwal R*], Han H, Valerio-Shewmaker MA, DeSantis SM, Yaseen A, Gandhi HA, Amavisca XF, Ross JA, Padilla LN, Gonzalez MO, Wu L, Silberman MA, Lakey D, Shuford JA, Pont SJ, Boerwinkle E

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.3389/fped.2024.1393321")[10.3389/fped.2024.1393321] (Frontiers in Pediatrics)  ],
  right-content: [
    Aug 2024
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #[*Baseline characteristics of SARS-CoV-2 vaccine non-responders in a large population-based sample*]

  #v(-design-text-leading)
#v(design-highlights-top-margin);Yaseen A, DeSantis SM, #[*Sabharwal R*], Talebi Y, Swartz MD, Zhang S, Leon Novelo L, Pinzon-Gomez CL, Messiah SE, Valerio-Shewmaker M, Kohl HW 3rd, Ross J, Lakey D, Shuford JA, Pont SJ, Boerwinkle E

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.1371/journal.pone.0303420")[10.1371/journal.pone.0303420] (PLoS One)  ],
  right-content: [
    May 2024
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #[*An Interactive Online Dashboard with COVID-19 Trends and Data Analysis in Northeast and South Texas*]

  #v(-design-text-leading)
#v(design-highlights-top-margin);Zhang Z, #[*Sabharwal R*], Lee M, Zhang K, McGaha P, Crum M, Bauer C, Fisher-Hoch SP, McCormick JB, Reininger BM, Thomas S, Guajardo E, Pinon D, Yaseen A

#v(design-highlights-top-margin - design-text-leading)#link("https://research.ebsco.com/linkprocessor/plink?id=894625e1-7146-30bf-aa2c-9f5637dac41e")[research.ebsco.com/linkprocessor/plink?id=894625e1-7146-30bf-aa2c-9f5637dac41e] (Texas Public Health Journal)  ],
  right-content: [
    Apr 2024
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #[*Long-term immune response to SARS-CoV-2 infection and vaccination in children and adolescents*]

  #v(-design-text-leading)
#v(design-highlights-top-margin);Messiah SE, Talebi Y, Swartz MD, #[*Sabharwal R*], Han H, Bergqvist E, Kohl HW 3rd, Valerio-Shewmaker M, DeSantis SM, Yaseen A, Kelder SH, Ross J, Padilla LN, Gonzalez MO, Wu L, Lakey D, Shuford JA, Pont SJ, Boerwinkle E

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.1038/s41390-023-02857-y")[10.1038/s41390-023-02857-y] (Pediatric Research)  ],
  right-content: [
    Oct 2023
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #[*Scholarly recommendation systems: a literature survey*]

  #v(-design-text-leading)
#v(design-highlights-top-margin);Zhang Z, Patra BG, Yaseen A, Zhu J, #[*Sabharwal R*], Roberts K, Cao T, Wu H

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.1007/s10115-023-01901-x")[10.1007/s10115-023-01901-x] (Knowledge and Information Systems)  ],
  right-content: [
    June 2023
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #[*Data Cleaning for eCommerce: Standardizing Data Handling Practices for eCommerce Datasets*]

  #v(-design-text-leading)
  #v(design-highlights-top-margin);#[*Sabharwal R*]

#v(design-highlights-top-margin - design-text-leading)Procter & Gamble, Internal White Paper  ],
  right-content: [
    May 2021
  ],
)



