#!/bin/bash

# Creates .ai/project/ folder structure
# Usage: ./init-project.sh [target-dir]

TARGET="${1:-.}"
AI_DIR="$TARGET/project"

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

# Create placeholder files
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

echo "Created .ai/project/ structure in $TARGET"
