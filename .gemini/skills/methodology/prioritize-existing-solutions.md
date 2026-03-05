---
name: skill-prioritize-existing-solutions
description: Strategic guidelines for agents to search for and reuse existing patterns, libraries, and code before inventing new solutions.
---

# Prioritize Existing Solutions (Don't Reinvent the Wheel)

The most robust, maintainable code is often the code you don't write. All agents must prioritize reusing existing, proven solutions within the project or the broader ecosystem before proposing custom implementations.

## 1. Search the Codebase First (Local Reuse)
Before designing a new component, UI element, or utility function, you MUST search the existing codebase.
- **UI/UX (Designer):** Check `project/ui/cookbook.md` or search the repository for existing Buttons, Cards, or Modals. Do not create a new `CustomRedButton` if an `AppPrimaryButton` already exists.
- **Backend/Logic (Architect/Developer):** Search for existing API clients, parsers, or database helpers. If an app already has a `NetworkClient`, use it instead of writing a new `fetch` wrapper for your feature.
*Action:* Use `grep_search` or `glob` tools extensively during the research phase to find similar features.

## 2. Leverage the Ecosystem (External Reuse)
Do not build custom infrastructure if a mature, well-maintained library exists for your Tech Stack, UNLESS there is a strict project rule against it.
- **Authentication:** Use existing SDKs (Firebase Auth, Auth0, Supabase) rather than writing custom JWT management and password hashing, unless explicitly requested.
- **State Management & Caching:** Use established tools (React Query, Riverpod, Apollo, Room) instead of writing custom Observer patterns or local SQLite wrappers.
- **Complex UI:** For things like Calendars, Charts, or Video Players, always propose using a reputable 3rd-party library first.

## 3. The "Build vs. Buy" Proposal (Architect)
When an external library or existing pattern is found, the Architect must present it as the primary option:
*Example:* "We need a date picker. I found the `react-native-calendars` library which has 10k stars and solves 95% of our needs. Option 1: Use this library (1 day of work). Option 2: Build a custom calendar (2 weeks of work). I strongly recommend Option 1."

## 4. Avoiding the "Not Invented Here" Syndrome
If you decide to reject an existing solution and build a custom one, you MUST document the exact reason in an ADR (Architecture Decision Record). Acceptable reasons include:
- The existing library is unmaintained or has known security vulnerabilities.
- The project has a strict "zero dependencies" policy.
- The specific business requirement is too unique and hacking a 3rd-party library would be more complex than writing it from scratch.