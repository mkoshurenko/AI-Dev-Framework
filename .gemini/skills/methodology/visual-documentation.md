---
name: skill-visual-documentation
description: Guidelines for generating highly visual, client-ready documentation using Mermaid.js, ASCII tables, and flowcharts.
---

# Visual Documentation Standards

Documentation in this framework is intended to be both developer-friendly and client-ready. To achieve this, ALL agents (especially Analyst and Architect) MUST heavily utilize visual representations rather than relying solely on walls of text.

## 1. Mandatory Mermaid.js Diagrams
Use `mermaid` code blocks to generate diagrams that can be easily rendered by GitHub, GitLab, and modern Markdown viewers.

### For the Analyst (`spec.md` & User Flows):
Instead of just listing steps, visualize the "Happy Path" and "Edge Cases" using State or Sequence diagrams.
*Example - User Login Flow:*
```mermaid
sequenceDiagram
    actor User
    participant Client as Mobile App
    participant Server as Auth API
    User->>Client: Enters Credentials
    Client->>Server: POST /login
    alt Valid Credentials
        Server-->>Client: 200 OK (JWT Token)
        Client-->>User: Navigate to Dashboard
    else Invalid Credentials
        Server-->>Client: 401 Unauthorized
        Client-->>User: Show Error Message
    end
```

### For the Architect (`design.md` & Architecture):
You MUST include a component or system architecture diagram.
*Example - System Architecture:*
```mermaid
graph TD
    UI[Mobile UI] -->|User Intent| VM[ViewModel]
    VM -->|Fetch Data| Repo[Repository]
    Repo -->|API Call| Net[Network DataSource]
    Repo -->|Local Read| DB[(Local Database)]
```

## 2. ASCII Tables for Data & APIs
When describing data models, API endpoints, or comparing options, ALWAYS use Markdown tables instead of bulleted lists. Tables are easier for clients to scan.

*Example - API Contract:*
| Endpoint | Method | Purpose | Required Auth |
| :--- | :--- | :--- | :---: |
| `/api/v1/users` | `GET` | Fetches user profile | Yes (JWT) |
| `/api/v1/login` | `POST` | Authenticates user | No |

## 3. The "Client-Ready" Rule
Before finalizing any documentation, ask yourself: *"If the client (who may not be a deep technical expert) looks at this, will they understand the core concept in 30 seconds?"*
- Use bolding for emphasis.
- Use emojis (e.g., 🟢, 🔴, ⚠️) sparingly but effectively to denote status or warnings.
- Lead with the diagram, follow with the text explanation.