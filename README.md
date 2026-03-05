# AI-Dev-Framework

A hierarchical, agent-based framework for AI-assisted software development. Optimized for Gemini CLI, this framework transforms AI from a basic code generator into a team of Senior Engineers, Analysts, and Architects that follow industry best practices.

## Core Architecture

- **Orchestrator (`GEMINI.md`)**: The "Brain" that manages the lifecycle and delegates tasks.
- **Agents (`.gemini/agents/`)**: Specialized sub-agents (Analyst, Architect, Manager, Designer, Developer, Reviewer).
- **Global Skills (`.gemini/skills/methodology/`)**: Shared framework knowledge and universal architectural conventions (UML, Interview Techniques, Quality Gates, Clean Architecture).
- **Project Skills (`.gemini/skills/project/`)**: Custom rules and guidelines specific to your current project.
- **Templates (`.gemini/templates/`)**: Standardized formats for specs, designs, tasks, and Code Review Reports.

## Setup in a New Project

1. **Copy the framework**:
   Copy `.gemini/` and `GEMINI.md` to your new project root.

2. **Initialize Project Structure**:
   Run the initialization script to create the necessary `project/` documentation folders and project skill templates:
   ```bash
   bash .gemini/scripts/init-project.sh
   ```

3. **Define Project Skills**:
   Open `.gemini/skills/project/project-guidelines-template.md`, fill in your specific tech stack and conventions, and rename it to `project-guidelines.md`.

4. **Configure Gemini CLI**:
   Ensure your `~/.gemini/settings.json` has agents enabled:
   ```json
   {
     "experimental": {
       "enableAgents": true
     }
   }
   ```

## How to Use This Framework (Best Practices)

To get the maximum performance and value out of this framework, follow these interaction guidelines when chatting with Gemini CLI:

1. **Start with the Analyst:**
   Don't just ask to "build a feature". Say: *"I want to add a shopping cart. Act as the Analyst and let's define the spec."* The Analyst will guide you through an **Iterative Dialogue**, proposing hypotheses and multiple-choice options instead of asking open-ended questions.
2. **Demand Visuals:**
   The agents are trained in `visual-documentation` and `uml-standards`. When the Architect takes over, expect to see Mermaid.js Class Diagrams, ER Database schemas, and State diagrams. If they provide a wall of text, ask them to visualize it.
3. **Enforce the Quality Gates:**
   When the Developer finishes coding, invoke the Reviewer: *"Call the reviewer agent to check my code."* The Reviewer uses a strict 10-point grading system, checking for security (no hardcoded secrets), performance (virtualization), and SOLID principles.
4. **Project Specificity First:**
   Always define your tech stack (e.g., Flutter, Ktor, Node.js) in `.gemini/skills/project/project-guidelines.md`. Agents will read this file *first* and adapt their architectural and coding suggestions to your specific ecosystem.

## Workflow Lifecycle

1. **Requirements**: `Analyst` creates `spec.md` (via Iterative Dialogue) ↔ `Reviewer` validates.
2. **Design**: `Architect` creates `design.md` (with UML/ER Diagrams) ↔ `Reviewer` validates.
3. **UI/UX**: `Designer` creates `ui-design.md` (if needed) ↔ `Reviewer` validates.
4. **Planning**: `Manager` creates `tasks.md` ↔ `Reviewer` validates.
5. **Execution**: `Developer` implements tasks ↔ `Reviewer` audits code and provides a graded Review Report.

## Key Principles

- **Rule Zero**: No action without a role. The Orchestrator MUST delegate.
- **WHY over HOW**: Document reasoning and trade-offs (e.g., in Architecture Decision Records).
- **Fabric-Inspired**: Identity → Goals → Steps → Output structure for all agents.
- **Research First**: Summarize existing context before asking the user.
- **Iterative Dialogue**: Agents use hypothesis-driven, step-by-step interviews rather than dumping questions.
- **Visual First**: Heavy reliance on Mermaid.js (State, Sequence, ER, Class diagrams) to make documentation clear.
- **Don't Reinvent the Wheel**: Prioritize ecosystem libraries and existing codebase patterns over custom code.
