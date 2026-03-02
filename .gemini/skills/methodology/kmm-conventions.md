---
name: skill-kmm-conventions
description: Coding standards, naming conventions, and project structure for Kotlin Multiplatform (KMM).
---

# KMM Project Conventions

## Project Structure
- `shared/src/commonMain/kotlin/com/smarthome/{feature}/`:
  - `domain/`: `model/`, `usecase/`
  - `data/`: `repository/`, `datasource/`
  - `presentation/`: `{Feature}ViewModel.kt`, `{Feature}State.kt`
- `androidApp/src/main/java/com/smarthome/{feature}/ui/`: Compose Screens.

## Naming Conventions
- ViewModels: `{Feature}ViewModel`.
- States/Events/Effects: `{Feature}State`, `{Feature}Event`, `{Feature}Effect`.
- Screens: `{Screen}Screen`.
- UseCases: `{Action}{Entity}UseCase`.

## Coding Style
- Use Kotlin conventions.
- Prefer immutability (`val` over `var`).
- Use data classes for DTOs.
- Follow PEP 8 for Python (CV services).

## Output Language
- All code, comments, and commit messages must be in English.
