---
name: skill-scalability-and-growth
description: Strategic guidelines for the Architect agent to design systems that anticipate future growth based on data and current requirements, avoiding "throwaway" solutions.
---

# Scalability & Future-Proofing Strategy

This skill guides the Architect in making technical decisions that balance immediate needs with long-term scalability. The goal is to design systems that can grow without requiring a complete rewrite.

## 1. Data-Driven Decision Making
Never design an architecture based on abstract assumptions. Base your decisions on:
- **Current Metrics:** What is the current user base, request volume, and data size?
- **Expected Growth:** What is the projected growth over the next 1-3 years?
- **Domain Constraints:** Are there legal, geographical, or hardware constraints?
*Action:* If these metrics are unknown during the `design.md` creation, the Architect MUST ask the Analyst or User to define the expected scale before committing to a database or infrastructure choice.

## 2. "Build for Now, Architect for Later"
Avoid premature optimization (e.g., implementing Kubernetes for a 100-user app), but design boundaries so that scaling is possible later without rewriting the core domain.
- **Interface Driven:** Use interfaces for all infrastructure dependencies (Databases, Third-party APIs, Message Queues). This allows swapping a simple SQLite DB for a distributed PostgreSQL cluster later without touching business logic.
- **Modular Monolith First:** Default to a well-structured modular monolith rather than jumping straight to microservices, unless the organization scale explicitly demands it. Microservices solve organizational problems, not just technical ones.

## 3. Anticipating Bottlenecks (The "What If" Scenarios)
When presenting an architectural option, you must explicitly address potential future bottlenecks:
- **Data Volume:** "What happens when this table hits 10 million rows? Do we need partitioning or archiving strategies now?"
- **Traffic Spikes:** "How does the system handle a sudden 10x spike in traffic? Can this component scale horizontally?"
- **Feature Expansion:** "If we add three more platforms (e.g., Web, Watch, TV), does the current API design still hold up, or should we introduce a BFF (Backend-for-Frontend) now?"

## 4. Avoiding "Throwaway" Code
If a temporary or sub-optimal solution is proposed to meet a tight deadline, it MUST be documented as Technical Debt.
- The Architect must outline a clear path for how this "hack" will be migrated to the proper architecture in the future.
- Never accept a solution that permanently locks the system into a deprecated or unmaintainable technology stack just to save a few hours of setup.