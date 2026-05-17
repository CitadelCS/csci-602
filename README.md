# CSCI 602 — Foundations of Software Engineering

[![Java CI](https://github.com/CitadelCS/csci-602/actions/workflows/maven.yml/badge.svg)](https://github.com/CitadelCS/csci-602/actions/workflows/maven.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Template repository for CSCI 602 semester projects. Students receive their own copy via GitHub Classroom.

## Tech Stack

| Layer | Technology |
|---|---|
| Backend | Java 25, Spring Boot 3.5, Spring Security (JWT) |
| Frontend | React (Vite) |
| Database | PostgreSQL (Flyway migrations) |
| Testing | JUnit 5, Cucumber (BDD) |
| CI/CD | GitHub Actions |
| Deployment | Render (Static Site + Web Service + PostgreSQL) |
| API Docs | SpringDoc OpenAPI (Swagger UI) |

## Environment Setup

### Prerequisites

- **Java 25** — Install Amazon Corretto 25
  - macOS: `brew install --cask corretto@25`
  - Windows: Download the `.msi` installer from [Amazon Corretto 25](https://docs.aws.amazon.com/corretto/latest/corretto-25-ug/downloads-list.html)
- **PostgreSQL** — You will be given credentials to a cloud-hosted database
- **Node.js 20+** — Required for the React frontend (`brew install node` or [nodejs.org](https://nodejs.org/))
- **IntelliJ IDEA** — Recommended IDE ([free student license](https://www.jetbrains.com/community/education/#students))

### 1. Create Your Repository

You will receive a GitHub Classroom link from your professor:

```
https://classroom.github.com/a/{classroomId}
```

This creates a private repository under the [CitadelCS](https://github.com/CitadelCS) organization.

### 2. Clone and Build

```bash
git clone git@github.com:CitadelCS/csci-602-fall-2026-{yourUsername}.git
cd csci-602-fall-2026-{yourUsername}
```

> On Windows, replace `./mvnw` with `.\mvnw` in all commands below.

```bash
./mvnw clean compile
```

### 3. Configure Your Database

Update `src/main/resources/application.yaml` with your database credentials:

```yaml
spring:
  datasource:
    url: jdbc:postgresql://{host}:{port}/{database}
    username: {username}
    password: {password}
```

### 4. Run the API

```bash
./mvnw spring-boot:run
```

The API starts on port 5001. Access Swagger UI at [http://localhost:5001/swagger-ui/index.html](http://localhost:5001/swagger-ui/index.html).

### 5. Run Tests

```bash
./mvnw test
```

This runs both JUnit unit tests and Cucumber integration tests.

### 6. Frontend Setup (after Iteration 0)

```bash
cd frontend
npm install
npm run dev
```

The React dev server starts on [http://localhost:5173](http://localhost:5173) and proxies API requests to the Spring Boot backend.

## Project Structure

```
├── .github/workflows/     # GitHub Actions CI pipeline
├── frontend/              # React (Vite) frontend (created in Iteration 0)
├── src/
│   ├── main/
│   │   ├── java/edu/citadel/
│   │   │   ├── api/           # REST controllers
│   │   │   ├── config/        # Spring configuration
│   │   │   ├── dal/           # Data access layer (repositories, models)
│   │   │   └── main/          # Application entry point
│   │   └── resources/
│   │       ├── db/migration/  # Flyway SQL migrations
│   │       └── application.yaml
│   └── test/
│       ├── java/edu/citadel/
│       │   ├── bdd/           # Cucumber runner and step definitions
│       │   └── hw1/           # HW1 unit tests
│       └── resources/
│           └── features/      # Cucumber .feature files (Gherkin)
├── pom.xml                # Maven dependencies and build config
└── README.md
```

## Useful Commands

| Command | Description |
|---|---|
| `./mvnw compile` | Compile the project |
| `./mvnw test` | Run all tests (JUnit + Cucumber) |
| `./mvnw spring-boot:run` | Start the API locally |
| `./mvnw clean install` | Full build + test |

## Resources

- [Spring Boot — Getting Started](https://spring.io/guides/gs/spring-boot/)
- [Spring Boot — Building REST Services](https://spring.io/guides/tutorials/rest)
- [Cucumber — Spring Integration](https://www.baeldung.com/cucumber-spring-integration)
- [React — Getting Started with Vite](https://vitejs.dev/guide/)
- [Maven in 5 Minutes](https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html)
- [Render — Deployment Docs](https://render.com/docs)

