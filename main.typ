#import "@preview/modern-cv:0.9.0": *

#show: resume.with(
  author: (
    firstname: "Tomás",
    lastname: "Esteves",
    email: "tomas@tomase.pt",
    homepage: "www.tomase.pt",
    // phone: "",
    github: "Pesteves2002",
    linkedin: "tomase-pt",
    // twitter: "typstapp",
    // scholar: "",
    // orcid: "0000-0000-0000-000X",
    // birth: "January 1, 1990",
    // address: "111 Example St. Example City, EX 11111",
    positions: (),
  ),
  accent-color: black,
  font: "Source Sans Pro",
  use-smallcaps: false,
  colored-headers: false,
  date: datetime.today().display(),
  description: "Curriculum Vitae of Tomás Esteves",
  language: "en",
  // paper-size: "a4",
  profile-picture: none,
  show-footer: false,
)

#show heading.where(level: 1): it => block(
  sticky: true,
  above: 0.85em,
  below: 0.5em,
)[
  #set text(size: 12pt, weight: "regular")
  #set align(left)
  #set block(above: 0em, below: 0.25em)
  #let color = color-darkgray

  #block[
    #text[#upper[#text(color)[#it.body]]]
  ]

  #block[
    #line(length: 100%, stroke: 0.5pt)
  ]
]

#let resume-entry(
  title: none,
  location: "",
  date: "",
  description: "",
  title-link: none,
  accent-color: default-accent-color,
  location-color: default-location-color,
) = {
  let title-content
  if type(title-link) == str {
    title-content = link(title-link)[#title]
  } else {
    title-content = title
  }

  block(above: 0.45em, below: 0.65em, sticky: true)[
    #pad[
      #justified-header(title-content, location)
      #if description != "" or date != "" [
        #secondary-justified-header(emph(description), date)
      ]
    ]
  ]
}

#let resume-item(body) = {
  set text(
    size: 10pt,
    style: "normal",
    weight: "regular",
    fill: color-darknight,
  )
  set block(above: 0.75em, below: 0.85em)
  set par(leading: 0.65em)

  pad(
    left: 1em,
    block()[
      #body
    ],
  )
}

= Experience

#resume-entry(
  title: "INESC-ID",
  location: "Lisbon, Portugal",
  date: "Aug 2024 - Oct 2025",
  description: "HPC Research Intern",
  title-link: "www.inesc-id.pt",
)

#resume-item[
  - Conducted thesis research on distributed computation of large-scale matrix functions in C++.
  - Engineered a novel algorithm with patent potential and parallelized it with OpenMP for 100% parallel efficiency.
  - Developed a distributed version using OpenMPI, enabling experimentation on significantly larger matrices.
  - Executed large-scale benchmarks on the Deucalion and MareNostrum supercomputers using SLURM workload management, leveraging up to 8,000 cores across 100 nodes.
  - Utilized the HDF5 library for high-performance data storage and retrieval.
]

#resume-entry(
  title: "Instituto Superior Técnico - DEI",
  location: "Lisbon, Portugal",
  date: "Aug 2022 - Jul 2024",
  description: "Full Stack Developer & Systems Administrator",
  title-link: "https://dei.tecnico.ulisboa.pt",
)

#resume-item[
  - Upgraded the backend stack by moving Java from 11 to 17 and Spring Boot from 2.2.4 to 2.7.5.

  - Modernized the frontend by migrating from Vue 2 to Vue 3 with Typescript.

  - Implemented reliable Flyway migration pipelines for safe and consistent database changes.

  - Refactored core user data models and business logic to enhance maintainability and scalability, achieving up to 100× faster request processing.

  - Integrated external APIs to automate the import and synchronization of school data.

  - Designed and deployed automated cron-based workflows to streamline departmental operations.

  - Implemented secure refresh-token mechanisms to enhance authentication stability.

  - Supported office staff by resolving issues related to printers, Windows systems, and email tools.
]

= Education

#resume-entry(
  title: "Instituto Superior Técnico",
  location: "Lisbon, Portugal",
  date: "Sep 2023 - Oct 2025",
  description: "Master's Degree in Computer Science and Engineering",
  title-link: "https://fenix.tecnico.ulisboa.pt/cursos/meic-a",
)

#resume-item[
  - Specialization in Distributed Systems and Cybersecurity.
]

#resume-entry(
  title: "Kungliga Tekniska Högskolan",
  location: "Stockholm, Sweeden",
  date: "Aug 2024 - Dec 2024",
  description: "Erasmus Programme",
  title-link: "https://www.kth.se/en/studies/exchange/exchange-studies-at-kth",
)

#resume-entry(
  title: "Instituto Superior Técnico",
  location: "Lisbon, Portugal",
  date: "Sep 2020 - Jun 2023",
  description: "Bachelor's Degree in Computer Science and Engineering",
  title-link: "https://fenix.tecnico.ulisboa.pt/cursos/leic-a",
)

= Awards

#resume-entry(
  title: "Academic Merit Diplomas",
  location: "Lisbon, Portugal",
  date: "2021 - 2025",
  description: "Awarded for excellent performance during BSc and Msc",
)


#resume-entry(
  title: "Finalist at NOS Prize",
  location: "Lisbon, Portugal",
  date: "May 2025",
  description: "Top 3 student at Parallel and Distributed Computing Course",
  title-link: "https://tecnico.ulisboa.pt/pt/noticias/campus-e-comunidade/nos-premeia-pela-primeira-vez-estudante-do-tecnico-com-premio-de-merito-em-computacao-paralela-e-distribuida/",
)

#resume-item[
  - Implemented a 3D Conway’s Game of Life in parallel and distributed environments, achieving linear scalability.

  - Optimized performance and automated execution with OpenMP, OpenMPI, and SLURM on multi-machine clusters.
]

#resume-entry(
  title: "Winner of Novabase/Celfocus Prize",
  location: "Lisbon, Portugal",
  date: "Jul 2023",
  description: "Best project at Software Engineering Course",
  title-link: "https://tecnico.ulisboa.pt/pt/noticias/campus-e-comunidade/celfocus-distingue-estudantes-do-tecnico-em-engenharia-de-software/",
)

#resume-item[
  - Developed features for a full-stack web app, in an Agile workflow with sprints and Test-Driven Development (TDD).
  - Worked across the stack with Spring Boot, PostgreSQL, Vue, and GitLab, supporting CI/CD pipelines.
]

= Projects and Interests

#resume-entry(
  title: "Self-Hosted Infrastructure",
  date: "2020 - Present",
  description: "Set up and maintain my self-hosted infrastructure, including mail server, personal website, and Nextcloud",
)

#resume-item[
  - Utilized technologies such as NixOS, Nginx, Prometheus, Grafana, Loki, and Tailscale
]

#resume-entry(
  title: "Federate Athlete",
  date: "2018 - Current",
  description: "Runner with participation in National level competitions",
)

#let TeX = {
  set text(font: "New Computer Modern")
  let t = "T"
  let e = text(baseline: 0.22em, "E")
  let x = "X"
  box(t + h(-0.14em) + e + h(-0.14em) + x)
}

#let LaTeX = {
  set text(font: "New Computer Modern")
  let l = "L"
  let a = text(baseline: -0.35em, size: 0.66em, "A")
  box(l + h(-0.32em) + a + h(-0.13em) + TeX)
}

= Languages and Technologies

#resume-item[
  Bash, C/C++, Docker, Git, Java, #LaTeX, Linux, Nix, PostgreSQL/MariaDB, Python, Rust, Spring Boot, Typst
]


