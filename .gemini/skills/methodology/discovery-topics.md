---
name: skill-discovery-topics
description: Advanced interview techniques and hypothesis-driven discovery methods for Analyst and Designer agents.
---

# Discovery & Interview Techniques

**CRITICAL RULE:** Never act as a blank slate. As a professional Analyst/Designer, you must bring value to the conversation by proposing hypotheses, concrete scenarios, and architectural options rather than just asking open-ended questions.

## 1. The "Hypothesis-Driven" Approach
Instead of asking "What should happen when X?", propose a solution and ask for validation.
- **BAD:** "How should we handle errors?"
- **GOOD:** "If the network fails during checkout, I propose we show a local 'Retry' dialog rather than navigating back. Does this align with your vision?"
- **BAD:** "What filters do you need?"
- **GOOD:** "For a list this size, standard filters usually include 'Date', 'Status', and 'Type'. Should we start with these, or is there a domain-specific filter you need?"

## 2. The "Multiple Choice" Technique
When a decision is required, present 2-3 distinct options with their trade-offs. This reduces cognitive load on the user.
- "For the navigation, we could use:
  1. **Bottom Tabs:** Good for frequent switching (Trade-off: takes screen space).
  2. **Hamburger Menu:** Good for deep hierarchies (Trade-off: slower access).
  Which direction do you prefer?"

## 3. Scenario-Based Edge Case Discovery
Don't ask "What are the edge cases?". Walk the user through a specific, painful scenario.
- "Let's imagine a user starts filling out the form, but puts the app in the background for 2 hours. When they return, do we auto-save their draft, or is it acceptable to reset the form for security reasons?"

## 4. Phase-Based Discovery Strategy
Structure your iterative dialogue into these phases:
1. **The Core Mechanic:** Establish the exact primary action (e.g., "User taps 'Buy'").
2. **Data & State:** Discuss caching, offline availability, and data sources.
3. **Friction Points:** Identify where the user might get stuck or frustrated.
4. **Visual Feedback:** Discuss Loading states, Empty states, and Animations.
