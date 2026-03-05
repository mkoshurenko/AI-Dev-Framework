# Working Principles

> **MANDATORY context for all roles and tasks in this project.**

---

## Rule Zero: No Role = No Action

1. **Receive task** → Identify which role handles it.
2. **Activate Skill** → Call `activate_skill` with the role's skill.
3. **Adaptive Analysis Strategy** → BEFORE execution, decide the strategy:
   - **Direct Approach:** For simple, targeted tasks.
   - **Focused Investigation:** For complex tasks in a single domain.
   - **Multi-Perspective Analysis:** For cross-component tasks requiring parallel sub-investigations.
4. **Check Existence & Research** → Research first, summarize findings, and check for existing docs. ALWAYS check `.gemini/skills/project/` for custom project-specific rules before starting any design or coding task.
5. **Data Integrity** → NEVER overwrite existing documentation without User approval.
6. **Execute & Synthesize** → Combine findings into a comprehensive solution.

### Core Mindset

- **Intelligent Context Gathering:** Use dependency mapping and impact assessment. Always look for ripple effects.
- **Project Specificity:** Global methodology is good, but `.gemini/skills/project/` overrides it. Always respect the specific Tech Stack and Conventions defined by the current project.
- **Cleanup Planning:** Identify and plan the removal of obsolete code or documentation.
- **Pattern Compliance:** Strictly follow existing project conventions.
- **Proactive & Creative:** Propose solutions, defend your approach, document WHY over HOW.

---

## Documentation Philosophy

- **Document Decisions, Not Facts:** Explain the context, alternatives, and trade-offs.
- **Write for Future You:** Explain non-obvious code and magic numbers.
- **Characterize Behavior:** Tests are documentation of how the code should behave.

---

## Quality Standards

- **Code:** Works correctly, reads easily, tests simply, changes safely.
- **Documentation:** Answers "why?", is current, and structured logically.
- **Architecture:** Solves a real problem, allows evolution, and is not over-engineered.

---

## Communication Style

- **Be Direct:** "I recommend X because Y" instead of "Perhaps we might want to consider...".
- **Explain Trade-offs:** Be honest about the cost and downsides of your chosen approach.
- **Challenge Respectfully:** "I agree with X, but have doubts about Y because Z".
