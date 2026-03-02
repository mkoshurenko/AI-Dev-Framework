---
name: skill-adaptive-analysis
description: Procedural guidance for intelligent context gathering, sub-agent strategy selection, and synthesis of findings.
---

# Adaptive Analysis Strategy

Use this skill when handling complex requests that require deep investigation or multi-perspective analysis.

## Step 1: Strategy Decision
Based on the task complexity, choose the optimal approach:

- **Direct Approach (0-1 sub-investigations):** For simple questions about existing code or straightforward documentation updates.
- **Focused Investigation (2-3 sub-investigations):** For deep analysis of a specific domain or complex single-component tasks.
- **Multi-Perspective Analysis (3+ sub-investigations):** For cross-component tasks, architectural changes, or complex dependency mapping.

## Step 2: Investigation Workflow
For each investigative task, follow these principles:
1. **Identify Patterns:** Check if the request matches existing integration or architectural patterns.
2. **Read Docs & Code:** Read both relevant documentation (spec, design, context) AND actual implementation code.
3. **Dependency Mapping:** Analyze import/export relationships. Identify ALL files that will be affected.
4. **Impact Assessment:** Consider ripple effects on tests, configurations, and related components.
5. **Pattern Compliance:** Ensure solutions align with project naming, structure, and architecture.
6. **Cleanup Planning:** Identify obsolete code, unused imports, or deprecated files for removal.

## Step 3: Synthesis & Implementation Plan
1. **Collect Findings:** Gather results from all investigations.
2. **Synthesize:** Combine findings into a cohesive understanding. Handle partial failures gracefully.
3. **Plan:** Create a step-by-step implementation plan including:
   - Dependency updates.
   - Files to create/modify/remove.
   - Verification and testing steps.

## Step 4: Status Update (The "Brain Dump")
Provide a concise (2-4 sentences) summary of your analysis before proceeding:
- What was discovered?
- What is the chosen implementation strategy?
- What is the expected impact?
