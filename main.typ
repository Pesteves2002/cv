#import "@preview/modern-cv:0.9.0": *

#show: resume.with(
  author: (
    firstname: "Tomás",
    lastname: "Esteves",
    email: "tomasesteves2002@tecnico.ulisboa.pt",
    // homepage: "https://example.com",
    phone: "",
    github: "Pesteves2002",
    linkedin: "tomase-pt",
    // twitter: "typstapp",
    // scholar: "",
    // orcid: "0000-0000-0000-000X",
    // birth: "January 1, 1990",
    // address: "111 Example St. Example City, EX 11111",
    positions: ("Master's Student",),
  ),
  profile-picture: none,
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
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

#resume-entry(
  title: "Winner of Novabase/Celfocus Prize",
  location: "Instituto Superior Técnico (IST), Lisbon, Portugal",
  date: "July 2023",
  description: "Best project at Software Engineering Course",
  title-link: "...",
)

#resume-item[
  Added statistics panel functionality in the QuizzeTutor platform.

  Project developed in an Agile approach with sprints.

  Followed the Test Driven Development (TDD) paradigm.

  Used technologies such as Spring Boot and Vue.
]

= Skills

#resume-skill-item(
  "Languages",
  (
    strong("C"),
    strong("Java"),
    "SQL",
    "Spring Boot",
  ),
)
#resume-skill-item("Spoken Languages", (strong("Portuguese"), "English"))
#resume-skill-item(
  "Operating Systems",
  (
    strong("NixOS"),
    "Windows",
    "Arch Linux",
  ),
)
#resume-skill-item("Tools", (strong("git"), "vim", "Latex", "Typst"))

= Education

#resume-entry(
  title: "Master's Degree",
  location: "Instituto Superior Técnico (IST), Lisbon, Portugal",
  date: "September 2023 - Current",
  description: "MSc in Computer Science and Engineering",
)

#resume-item[
  Specialization in the areas of Distributed Systems and Cybersecurity.
]

#resume-entry(
  title: "Erasmus Programme",
  location: "Kungliga Tekniska Högskolan (KTH), Stockholm, Sweeden",
  date: "August 2024 - December 2024",
  description: "Study abroad for one semester",
)

#resume-entry(
  title: "Bachelor's Degree",
  location: "Instituto Superior Técnico (IST), Lisbon, Portugal",
  date: "September 2020 - June 2023",
  description: "BSc in Computer Science and Engineering (17/20)",
)

= Interests

#resume-entry(
  title: "Federate Athlete",
  date: "September 2018 - Current",
  description: "Runner with participation in National level competitions",
)

#resume-entry(
  title: "Computer Hardware",
  description: "Interested in the current hardware scene",
)
