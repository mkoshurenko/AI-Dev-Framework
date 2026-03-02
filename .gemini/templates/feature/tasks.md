# FEATURE TASKS: [Feature Name]

## Summary

**Total Tasks:**
**Completed:**
**Progress:** 0%

## Backend Tasks

### Setup

- [ ] **BE-1:** [Task description]
  - Scope: backend
  - Files: `path/to/file.ts`
  - Acceptance: [how to verify]

### Database

- [ ] **BE-2:** [Create migration for ...]
  - Scope: backend
  - Files: `migrations/`
  - Depends on: —
  - Acceptance: migration runs successfully

### API

- [ ] **BE-3:** [Create endpoint for ...]
  - Scope: backend
  - Files: `controllers/`, `services/`
  - Depends on: BE-2
  - Acceptance: endpoint returns expected response

### Tests

- [ ] **BE-4:** [Write tests for ...]
  - Scope: backend
  - Files: `tests/`
  - Depends on: BE-3
  - Acceptance: tests pass

---

## Client Tasks

### Components

- [ ] **FE-1:** [Create component for ...]
  - Scope: client
  - Files: `components/`
  - Depends on: —
  - Acceptance: component renders correctly

### Integration

- [ ] **FE-2:** [Connect to API ...]
  - Scope: client
  - Files: `services/`, `hooks/`
  - Depends on: BE-3, FE-1
  - Acceptance: data loads from API

### State

- [ ] **FE-3:** [Add state management for ...]
  - Scope: client
  - Files: `store/`
  - Depends on: FE-2
  - Acceptance: state updates correctly

### Tests

- [ ] **FE-4:** [Write tests for ...]
  - Scope: client
  - Files: `tests/`
  - Depends on: FE-3
  - Acceptance: tests pass

---

## Integration Tasks

- [ ] **INT-1:** [End-to-end flow ...]
  - Scope: both
  - Depends on: BE-4, FE-4
  - Acceptance: full flow works

---

## Implementation Order

1. BE-1, BE-2 (backend setup, can parallelize)
2. BE-3 (API endpoints)
3. FE-1 (client components, can start after BE-3)
4. BE-4, FE-2 (tests + integration)
5. FE-3, FE-4 (state + client tests)
6. INT-1 (e2e verification)

---

## Notes

<!-- Implementation notes, discoveries, changes from original design -->
