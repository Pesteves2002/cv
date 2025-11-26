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
    homepage: "https://tomase.pt",
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
  colored-headers: true,
  date: datetime.today().display(),
  description: "Curriculum Vitae of Tomás",
  language: "en",
  // paper-size: "a4",
  profile-picture: none,
  show-footer: false,
)

= Experience

#resume-entry(
  title: "Full Stack Developer & Systems Administrator",
  location: "Instituto Superior Técnico, Lisbon, Portugal",
  date: "August 2022 - July 2024",
  description: "Intern at Departamento de Engenharia Informática (DEI)",
  title-link: "www.dei.tecnico.ulisboa.pt",
)

#resume-item[
  Develop applications and troubleshoot for the Computer Science Department of the
  University.

  Technologies used:
  - (backend) Java, Spring Boot, MariaDB/Postgres
  - (frontend) Vue, Typescript

  Work History:
  - Upgrade backend and frontend tech stack
  - Major refactor in User Data and Logic
  - Implement cron jobs to automate processes
  - Implement Quality of Life features to end users
  - Use of APIs in order to import school data
  - Optimize overall performance of the application
  - Troubleshoot diverse issues
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
  C, Java, Rust, Git, Nix, Linux, Typst, #LaTeX
]

