#import "@preview/basic-resume:0.2.9": *

#let name = "Tomás Esteves"
#let location = "Lisbon, PT"
#let email = "tomas@tomase.pt"
#let github = "github.com/Pesteves2002"
#let linkedin = "linkedin.com/in/tomase-pt"
#let phone = "+1 (xxx) xxx-xxxx"
#let personal-site = "tomase.pt"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  // location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  // phone: phone,
  personal-site: personal-site,
  accent-color: black,
  font: "Source Sans Pro",
  paper: "a4",
  author-position: center,
  personal-info-position: center,
)

== Work Experience

#work(
  company: "Inesc-ID",
  location: "Lisbon, Portugal",
  dates: dates-helper(start-date: "August 2024", end-date: "October 2025"),
  title: "Research Intern",
  // title-link: "www.inesc-id.pt",
)
- Conducted thesis research on distributed computation of large-scale matrix functions.
- Engineered a novel algorithm with patent potential and parallelized it with OpenMP for 100% parallel efficiency.
- Developed a distributed version using OpenMPI, enabling experimentation on significantly larger matrices.
- Executed large-scale benchmarks on the Deucalion and MareNostrum supercomputers using SLURM workload management, leveraging up to 8,000 cores across 100 nodes.
- Utilized the HDF5 library for high-performance data storage and retrieval.

#work(
  company: "Instituto Superior Técnico - DEI",
  location: "Lisbon, Portugal",
  dates: dates-helper(start-date: "Aug 2022", end-date: "Jul 2024"),
  title: "Full Stack Developer & Systems Administrator",
  // title-link: "https://dei.tecnico.ulisboa.pt",
)
- Upgraded the backend stack by moving Java from 11 to 17 and Spring Boot from 2.2.4 to 2.7.5.
- Modernized the frontend by migrating from Vue 2 to Vue 3 with Typescript.
- Implemented reliable Flyway migration pipelines for safe and consistent database changes.
- Refactored core user data models and business logic to enhance maintainability and scalability, achieving up to 100× faster request processing.
- Integrated external APIs to automate the import and synchronization of school data.
- Designed and deployed automated cron-based workflows to streamline departmental operations.
- Implemented secure refresh-token mechanisms to enhance authentication stability.
- Supported office staff by resolving issues related to printers, Windows systems, and email tools.

== Education

#edu(
  institution: "Instituto Superior Técnico",
  location: "Lisbon, Portugal",
  dates: dates-helper(start-date: "Sep 2023", end-date: "Oct 2025"),
  degree: "Master's Degree in Computer Science and Engineering",
  consistent: true,
  // title-link: "https://fenix.tecnico.ulisboa.pt/cursos/meic-a",
)
- Specialization in Distributed Systems and Cybersecurity.

#edu(
  institution: "Kungliga Tekniska Högskolan",
  location: "Stockholm, Sweeden",
  dates: dates-helper(start-date: "Aug 2024", end-date: "Dec 2024"),
  degree: "Erasmus Programme",
  consistent: true,
  // title-link: "https://www.kth.se/en/studies/exchange/exchange-studies-at-kth",
)

#edu(
  institution: "Instituto Superior Técnico",
  location: "Lisbon, Portugal",
  dates: dates-helper(start-date: "Sep 2020", end-date: "Jun  2023"),
  degree: "Bachelor's Degree in Computer Science and Engineering",
  consistent: true,
  // title-link: "https://fenix.tecnico.ulisboa.pt/cursos/meic-a",
)

== Awards

// #resume-entry(
//   title: "Academic Merit Diplomas",
//   location: "Lisbon, Portugal",
//   date: "2021 - 2025",
//   description: "Awarded for excellent performance during BSc and Msc",
// )

#project(
  name: "Finalist at NOS Prize",
  dates: "May 2025",
)
- Top 3 student at Parallel and Distributed Computing Course
  - Implemented a 3D Conway’s Game of Life in parallel and distributed environments, achieving linear scalability.
  - Optimized performance and automated execution with OpenMP, OpenMPI, and SLURM on multi-machine clusters.

#project(
  name: "Winner of Novabase/Celfocus Prize",
  dates: "Jul 2023",
)
- Best project at Software Engineering Course
  - Developed features for QuizzesTutor, a full-stack web app, in an Agile workflow with sprints and Test-Driven Development (TDD).
  - Worked across the stack with Spring Boot, PostgreSQL, Vue, and GitLab, supporting CI/CD pipelines.

== Interests

#project(
  name: "Self-Hosted Infrastructure",
  dates: dates-helper(start-date: "2020", end-date: "Present"),
)
- Set up and maintain my self-hosted infrastructure, including mail server, personal website, and Nextcloud
  - Utilized technologies such as NixOS, Nginx, Prometheus, Grafana, Loki, and Tailscale

#project(
  name: "Federate Runner",
  dates: dates-helper(start-date: "2018", end-date: "Present"),
)

// #resume-entry(
//   title: "Federate Athlete",
//   // date: "September 2018 - Current",
//   // description: "Runner with participation in National level competitions",
// )

// #resume-item[
//   Runner with participation in National level competitions
// ]

// #resume-entry(title: "Computer Hardware and Self-Hosting")

// #resume-item[
//   Built my own PC and self-hosted infrastructure including email server and personal website
// ]

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

== Languages and Technologies

Bash, C/C++, Docker, Git, Java, #LaTeX, Linux, Nix, PostgreSQL/MariaDB, Python, Rust, Spring Boot, Typst

