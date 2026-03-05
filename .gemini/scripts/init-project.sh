#!/bin/bash

# Creates project folder structure and project-specific skills
# Usage: ./init-project.sh [target-dir]

TARGET="${1:-.}"
AI_DIR="$TARGET/project"
SKILLS_DIR="$TARGET/.gemini/skills/project"

# Create directories
mkdir -p "$AI_DIR/architecture"
mkdir -p "$AI_DIR/context"
mkdir -p "$AI_DIR/decisions"
mkdir -p "$AI_DIR/docs/backend"
mkdir -p "$AI_DIR/docs/client"
mkdir -p "$AI_DIR/docs/shared"
mkdir -p "$AI_DIR/features"
mkdir -p "$AI_DIR/management"
mkdir -p "$AI_DIR/temp/bugs"
mkdir -p "$AI_DIR/ui"
mkdir -p "$SKILLS_DIR"

# Create placeholder files for project
touch "$AI_DIR/architecture/overview.md"
touch "$AI_DIR/architecture/backend.md"
touch "$AI_DIR/architecture/client.md"

touch "$AI_DIR/context/shared.md"
touch "$AI_DIR/context/backend.md"
touch "$AI_DIR/context/client.md"

touch "$AI_DIR/docs/backend/api.md"
touch "$AI_DIR/docs/backend/database.md"
touch "$AI_DIR/docs/client/components.md"
touch "$AI_DIR/docs/client/state.md"
touch "$AI_DIR/docs/shared/setup.md"
touch "$AI_DIR/docs/shared/deployment.md"
touch "$AI_DIR/docs/shared/contributing.md"

touch "$AI_DIR/management/config.md"

touch "$AI_DIR/temp/backlog.md"
touch "$AI_DIR/temp/scratch.md"
touch "$AI_DIR/temp/session.md"

touch "$AI_DIR/ui/cookbook.md"
touch "$AI_DIR/ui/frameworks.md"

# Create template for project-specific skills
cat << 'EOF' > "$SKILLS_DIR/project-guidelines-template.md"
---
name: skill-project-guidelines
description: Project-specific guidelines, tech stack details, and coding conventions for this specific application.
---

# Project Guidelines

Use this skill to define rules specific to your project that override or extend the global framework skills.

## 1. Tech Stack
- Frontend: [e.g., Flutter, React Native, iOS Native]
- Backend: [e.g., Node.js, Kotlin Ktor, Python FastAPI]
- Database: [e.g., PostgreSQL, Firebase]

## 2. Coding Conventions
- Naming rules: [e.g., camelCase for variables, PascalCase for classes]
- Linting/Formatting: [e.g., Prettier, detekt, ESLint]

## 3. Project Specific Architecture
- Describe any deviations from the standard Clean Architecture.
- How is state managed in this specific app?
EOF

echo "Created project structure and custom skills template in $TARGET"
