# Architectural Design: {Feature Name}

## 1. Overview
{Technical overview of the implementation approach, highlighting how it meets the requirements in spec.md.}

## 2. Architecture & Components
> **Agent Note:** MUST use Mermaid.js `graph LR` to visualize component architecture and data flow.

```mermaid
graph LR
    UI[View] -->|Intent| Logic[Controller/ViewModel]
    Logic -->|Fetch| Repo[Repository]
    Repo --> API[Network API]
```

## 3. Domain Model (UML)
> **Agent Note:** MUST use Mermaid.js `classDiagram` to represent the core business logic, entities, and their relationships.

```mermaid
classDiagram
    class Entity {
        +String id
        +method()
    }
```

## 4. Data Schema (ER Diagram)
> **Agent Note:** If this feature requires local or remote database changes, MUST use Mermaid.js `erDiagram`.

```mermaid
erDiagram
    ENTITY1 ||--o{ ENTITY2 : contains
```

## 5. Security & Performance Considerations
* **Scalability:** {How does this handle 10x growth?}
* **Security:** {Data validation, secrets management.}
* **Performance:** {Caching strategies, rendering optimizations.}

## 6. Architectural Decisions (ADR)
* **Decision 1:** {Why did we choose X over Y?}