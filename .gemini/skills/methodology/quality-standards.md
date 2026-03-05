---
name: skill-quality-standards
description: Strict checklists, quality gates, and standards for validating code, designs, and specifications.
---

# Quality Standards & Quality Gates

## 1. Specification Validation (Analyst)
- [ ] User stories follow "As a... I want... So that..." format.
- [ ] Acceptance criteria are unambiguous and testable (yes/no).
- [ ] Edge cases (e.g., offline, timeout, empty state) are documented.
- [ ] Scope boundaries (IN vs OUT) are clearly defined.

## 2. Architecture Validation (Architect)
- [ ] WHY over HOW (reasoning documented).
- [ ] Component boundaries follow Clean Architecture principles.
- [ ] Infrastructure dependencies are abstracted behind interfaces.
- [ ] Architecture Decision Records (ADRs) created for major tech shifts.

## 3. Task Validation (Manager)
- [ ] Tasks are granular (completable in one 2-4 hour session).
- [ ] Clear "Done when" criteria for every task.
- [ ] Dependencies are explicit and unblocked tasks are prioritized.

## 4. Code & Implementation Validation (Developer / Reviewer)
### Code Quality
- [ ] Code meets all acceptance criteria from the spec.
- [ ] Minimal scope change (No "while I'm here" refactoring of unrelated code).
- [ ] No "Magic Numbers" or hardcoded string literals (extract to constants/resources).
- [ ] Adequate unit/integration test coverage for new business logic.

### Performance & Optimization
- [ ] No heavy computations (e.g., O(N^2) sorting) on the main/UI thread.
- [ ] Large lists implement virtualization/windowing to prevent memory leaks.
- [ ] Network requests are cached where appropriate to reduce redundant calls.
- [ ] Images and assets are optimized/compressed before loading.

### Security Gate
- [ ] No hardcoded secrets, API keys, or credentials (use .env or secret managers).
- [ ] All user inputs are sanitized and validated (prevention of SQLi, XSS).
- [ ] Error messages do not leak internal system details or stack traces to the client.

## 5. Git & PR Standards
- [ ] Pull Requests are kept small (ideally < 400 lines of changes) for effective review.
- [ ] Commit messages explain the WHY, not just the WHAT (e.g., "Fix auth crash by adding timeout" instead of "Update Auth.kt").
- [ ] PR description links to the corresponding task/ticket ID.
