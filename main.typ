#import "@preview/modern-cv:0.9.0": *

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
  Designed and implemented a 3D version of Conway’s Game of Life in serial, parallel, and distributed environments, achieving linear scalability across cores and nodes.

  Leveraged OpenMP, OpenMPI, and SLURM to optimize performance, automate distributed execution, and validate scaling efficiency on multi-machine clusters.
]

#resume-entry(
  title: "Winner of Novabase/Celfocus Prize",
  location: "Lisbon, Portugal",
  date: "July 2023",
  description: "Best project at Software Engineering Course",
  title-link: "https://tecnico.ulisboa.pt/pt/noticias/campus-e-comunidade/celfocus-distingue-estudantes-do-tecnico-em-engenharia-de-software/",
)

#resume-item[
  Built and enhanced features for QuizzesTutor, a full-stack web application developed within an Agile workflow using sprint cycles and Test-Driven Development (TDD).

  Worked across the stack using Spring Boot, JMeter, Postgres, Vue, Cypress and, GitLab to implement new functionality, ensure code quality, automate testing, and support continuous integration.
]

= Projects and Interests

#resume-entry(
  title: "Federate Athlete",
  date: "September 2018 - Current",
  description: "Runner with participation in National level competitions",
)

#resume-entry(
  title: "Computer Hardware and Self-Hosting",
  date: "August 2020 - Current",
  description: "Built my own PC and self-hosted infra including email server and personal website",
)

#resume-entry(
  title: "Technologies",
  date: "Current",
  description: "C, Git, Java, Linux, Nix, Rust, Typst, Latex",
)

