# AI-Dev-Framework

A hierarchical agent-based framework for AI-assisted software development. Optimized for Gemini CLI and Kotlin Multiplatform (KMM) projects.

## Core Architecture

- **Orchestrator (`GEMINI.md`)**: The "Brain" that manages the lifecycle and delegates tasks.
- **Agents (`.gemini/agents/`)**: Specialized sub-agents (Analyst, Architect, Manager, Designer, Developer, Reviewer).
- **Skills (`.gemini/skills/`)**: Shared knowledge and project conventions.
- **Templates (`.gemini/templates/`)**: Standardized formats for specs, designs, and tasks.

## Setup in a New Project

1. **Copy the framework**:
   Copy `.gemini/` and `GEMINI.md` to your new project root.

2. **Initialize Project Structure**:
   Run the initialization script to create the necessary `project/` documentation folders:
   ```bash
   bash .gemini/scripts/init-project.sh
   ```

3. **Configure Gemini CLI**:
   Ensure your `~/.gemini/settings.json` has agents enabled:
   ```json
   {
     "experimental": {
       "enableAgents": true
     }
   }
   ```

## Workflow Lifecycle

1. **Requirements**: `Analyst` creates `spec.md` ↔ `Reviewer` validates.
2. **Design**: `Architect` creates `design.md` ↔ `Reviewer` validates.
3. **UI/UX**: `Designer` creates `ui-design.md` (if needed) ↔ `Reviewer` validates.
4. **Planning**: `Manager` creates `tasks.md` ↔ `Reviewer` validates.
5. **Execution**: `Developer` implements tasks ↔ `Reviewer` audits code.

## Key Principles

- **Rule Zero**: No action without a role.
- **WHY over HOW**: Document reasoning and trade-offs.
- **Fabric-Inspired**: Identity → Goals → Steps → Output structure.
- **Research First**: Summarize existing context before asking the user.
