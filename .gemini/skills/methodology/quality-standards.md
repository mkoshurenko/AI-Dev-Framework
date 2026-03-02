---
name: skill-quality-standards
description: Checklists and standards for validating code, designs, and specifications.
---

# Quality Standards & Checklists

## Specification Validation (Analyst)
- [ ] User stories follow "As a... I want... So that..." format.
- [ ] Acceptance criteria are testable (yes/no).
- [ ] Edge cases and error scenarios documented.
- [ ] Scope is clearly defined (IN vs OUT).

## Architecture Validation (Architect)
- [ ] WHY over HOW (reasoning documented).
- [ ] Component boundaries are clear.
- [ ] Trade-offs and alternatives explored.
- [ ] ADRs created for major decisions.

## Task Validation (Manager)
- [ ] Tasks are small (completable in one session).
- [ ] No task depends on itself.
- [ ] Clear "Done when" criteria for every task.
- [ ] Dependencies are explicit.

## Code Validation (Reviewer/Developer)
- [ ] Meets requirements from spec.
- [ ] No hardcoded secrets or credentials.
- [ ] Adequate unit/integration test coverage.
- [ ] Minimal change (no "while I'm here" refactoring).
