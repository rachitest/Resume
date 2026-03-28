
#import "@preview/fontawesome:0.5.0": fa-icon

#let name = "Rachit Sabharwal"
#let locale-catalog-page-numbering-style = context { "Rachit Sabharwal - Page " + str(here().page()) + " of " + str(counter(page).final().first()) + "" }
#let locale-catalog-last-updated-date-style = "Last updated in Mar 2026"
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
#let design-text-font-size = 9pt
#let design-text-leading = 0.6em
#let design-text-font-family = "New Computer Modern"
#let design-text-alignment = "left"
#let design-text-date-and-location-column-alignment = right
#let design-header-photo-width = 3.5cm
#let design-header-use-icons-for-connections = true
#let design-header-name-font-size = 24pt
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
#let design-page-top-margin = 1cm
#let design-page-bottom-margin = 1cm
#let design-page-left-margin = 1cm
#let design-page-right-margin = 1cm
#let design-page-show-last-updated-date = false
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
  [#fa-icon("location-dot", size: 0.9em) #h(0.05cm)Cypress, Texas],
  [#box(original-link("tel:+1-585-281-1928")[#fa-icon("phone", size: 0.9em) #h(0.05cm)\(585\) 281-1928])],
  [#box(original-link("https://github.com/rachitest")[#fa-icon("github", size: 0.9em) #h(0.05cm)rachitest])],
)
#connections(connections-list)



== Professional Summary

#one-col-entry(
  content: [Data Scientist and Ph.D. Candidate with a proven track record of translating complex data into actionable business solutions. Seeking to leverage expertise in predictive modeling, advanced analytics, and cross-functional leadership to drive strategic decision-making and operational efficiency.]
)


== Education

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
    #v(design-highlights-top-margin);#highlights([Minors: Epidemiology, Health Economics],[Certificates: Advanced Data Science],)
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
    #emph[Master of Science in Biostatistics]
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Certificates: Data Science],)
  ],
  right-content: [
    #emph[Houston, TX]

#emph[Jan 2020 - May 2022]
  ],
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[The University of California, Berkeley]

#emph[Certificate in Software Development and Programming]
  ],
  right-content: [
    #emph[Berkeley, CA]

#emph[June 2023 - Apr 2025]
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
    
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)



== Experience

#two-col-entry(
  left-content: [
    #strong[Machine Learning R&D Intern]

#emph[The Dow Chemical Company]
  ],
  right-content: [
    #emph[Lake Jackson, TX]

#emph[May 2025 - Aug 2025]
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Generated \$15M in annual cost savings by developing an R application that automated 50\% of enterprise-wide Life Cycle Assessment \(LCA\) workflows.],[Improved predictive model reliability by 20-30\% through the development and implementation of a novel Bayesian Uncertainty Quantification \(UQ\) framework for real-world simulation data.],)
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
    #v(design-highlights-top-margin);#highlights([Accelerated drug safety screening by building a deep neural network to predict adverse drug events, improving early-stage toxicity detection capabilities.],[Mapped complex drug-gene interactions by engineering a scalable Knowledge Graph and Graph Neural Network, enabling faster identification of novel therapeutic signatures.],[Streamlined internal data discovery by developing a document tokenization framework for a scalable text-mining application.],)
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
    #v(design-highlights-top-margin);#highlights([Drove strategic marketing decisions by developing predictive models and interactive visualizations to map consumer and shopper behavioral trends.],[Unlocked new insights into market dynamics and retailer behavior by engineering high-performance predictive models using parallel computing frameworks.],[Ensured high-availability data access for analytics teams by architecting and maintaining big data ETL pipelines on Google Cloud Platform.],)
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
    #v(design-highlights-top-margin);#highlights([Significantly improved R&D workflow efficiency by full-stack developing a multi-featured patent recommendation application.],[Optimized data infrastructure by developing and maintaining automated ETL pipelines for diverse, multi-scale datasets.],[Enhanced data querying performance and relationship mapping by designing robust relational \(PostgreSQL\) and graph \(Neo4j\) database architectures.],)
  ],
)



== Selected Publications

#two-col-entry(
  left-content: [
    #strong[Trust and Uncertainty Quantification in Machine Learning Models Under Measurement Error]

  ],
  right-content: [
    Aug 2025
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);#strong[Sabharwal R]

#v(design-highlights-top-margin - design-text-leading)The Dow Chemical Company, Internal White Paper])

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
    #strong[Biorec: A Biomedical Recommendation System for Academic Conferences and Journals]

  ],
  right-content: [
    Apr 2022
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);#strong[Sabharwal, R]

#v(design-highlights-top-margin - design-text-leading)UTHealth, Technical Project])

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
  content: [#strong[Core Competencies:] Predictive Analytics, Machine Learning, Real-World Evidence \(RWE\), Data Strategy, Cross-Functional Leadership, Rapid Prototyping]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Programming & Cloud:] Python, R, SQL, SAS, MATLAB, Google Cloud Platform \(GCP\), AWS, Azure, Apache Spark]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Machine Learning & AI:] Scikit-learn, PyTorch, TensorFlow, Huggingface, Raytune, NLP, Graph Neural Networks]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Data Engineering & DevOps:] Apache Airflow, Docker, Git/GitHub CI/CD, PostgreSQL, Neo4J, BigQuery, Kubernetes]
)


