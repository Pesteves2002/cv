#import "@preview/modern-cv:0.9.0": *

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
  use-smallcaps: true,
  colored-headers: false,
  date: datetime.today().display(),
  description: "Curriculum Vitae of Tomás",
  language: "en",
  // paper-size: "a4",
  profile-picture: none,
  show-footer: false,
)

= Experience

#resume-entry(
  title: "Inesc-ID",
  location: "Lisbon, Portugal",
  date: "August 2024 - October 2025",
  description: "Research Intern",
  title-link: "www.inesc-id.pt",
)

#resume-item[
  - Conducted thesis research on distributed computation of large-scale matrix functions.
  - Designed a novel algorithm with patent potential, improving efficiency and scalability.
  - Implemented parallel execution using OpenMP, achieving near-linear performance scaling.
  - Developed a distributed version using OpenMPI, enabling experimentation on significantly larger matrices.
  - Executed large-scale benchmarks on the Deucalion and MareNostrum supercomputers using SLURM workload management.
  - Utilized the HDF5 library for high-performance data storage and retrieval.
]

#resume-entry(
  title: "Instituto Superior Técnico - DEI",
  location: "Lisbon, Portugal",
  date: "August 2022 - July 2024",
  description: "Full Stack Developer & Systems Administrator",
  title-link: "www.dei.tecnico.ulisboa.pt",
)

#resume-item[
  - Upgraded the backend stack by moving Java from 11 to 17 and Spring Boot from 2.2.4 to 2.7.5.

  - Modernized the frontend by migrating from Vue 2 to Vue 3 with Typescript.

  - Implemented reliable Flyway migration pipelines for safe and consistent database changes.

  - Refactored core user data models and business logic to improve maintainability and scalability.

  - Integrated external APIs to automate the import and synchronization of school data.

  - Designed and deployed automated cron-based workflows to streamline departmental operations.

  - Implemented secure refresh-token mechanisms to enhance authentication stability.

  - Optimized application performance, achieving up to 100× faster request processing.

  - Supported office staff by resolving issues related to printers, Windows systems, and email tools.
]

// = Skills

// #resume-skill-item(
//   "Languages",
//   (
//     strong("C"),
//     strong("Java"),
//     "SQL",
//     "Spring Boot",
//   ),
// )
// #resume-skill-item("Spoken Languages", (strong("Portuguese"), "English"))
// #resume-skill-item(
//   "Operating Systems",
//   (
//     strong("Linux"),
//     "Windows",
//   ),
// )
// #resume-skill-item("Tools", (strong("git"), "vim", "Latex", "Typst"))

= Education

#resume-entry(
  title: "Instituto Superior Técnico",
  location: "Lisbon, Portugal",
  date: "September 2023 - October 2025",
  description: "Master's Degree in Computer Science and Engineering",
  title-link: "https://fenix.tecnico.ulisboa.pt/cursos/meic-a",
)

#resume-item[
  Specialization in Distributed Systems and Cybersecurity.
]

#resume-entry(
  title: "Kungliga Tekniska Högskolan",
  location: "Stockholm, Sweeden",
  date: "August 2024 - December 2024",
  description: "Erasmus Programme",
  title-link: "https://www.kth.se/en/studies/exchange/exchange-studies-at-kth",
)

#resume-entry(
  title: "Instituto Superior Técnico",
  location: "Lisbon, Portugal",
  date: "September 2020 - June 2023",
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
  date: "July 2023",
  description: "Best project at Software Engineering Course",
  title-link: "https://tecnico.ulisboa.pt/pt/noticias/campus-e-comunidade/celfocus-distingue-estudantes-do-tecnico-em-engenharia-de-software/",
)

#resume-item[
  - Developed features for QuizzesTutor, a full-stack web app, in an Agile workflow with sprints and Test-Driven Development (TDD).
  - Worked across the stack with Spring Boot, PostgreSQL, Vue, and GitLab, supporting CI/CD pipelines.
]

= Projects and Interests

#resume-entry(
  title: "Federate Athlete",
  // date: "September 2018 - Current",
  // description: "Runner with participation in National level competitions",
)

#resume-item[
  Runner with participation in National level competitions
]

#resume-entry(title: "Computer Hardware and Self-Hosting")

#resume-item[
  Built my own PC and self-hosted infrastructure including email server and personal website
]

#resume-entry(title: "Technologies")

#resume-item[
  C, Java, Rust, PostgreSQL/MariaDB, Git, Nix, Linux, #LaTeX, Typst
]

