---
name: skill-architectural-foundations
description: Universal architectural principles, component boundary design, and technology-agnostic guidelines for system design.
---

# Universal Architectural Foundations

This skill provides technology-agnostic principles for designing robust software. Use these principles whether the target is Kotlin Multiplatform, Flutter, Node.js, or any other framework.

## 1. Clean Architecture Principles
Regardless of the framework, enforce a separation of concerns using layers:
- **Domain Layer (Core):** Business logic, Use Cases, and Entities. This layer must NOT depend on any UI, Database, or Network frameworks. It is pure logic.
- **Data Layer (Infrastructure):** Repositories, API Clients, and Local Databases. This layer implements the interfaces defined by the Domain layer.
- **Presentation Layer (UI):** ViewModels, Controllers, and Views. This layer reacts to State changes and dispatches User Intents. It should be "dumb" (no business logic).

## 2. Dependency Rule
Dependencies must point **inward** toward the Domain layer. 
- UI depends on Domain.
- Data depends on Domain.
- Domain depends on NOTHING (or generic core libraries).

## 3. State Management & Data Flow
- **Unidirectional Data Flow (UDF):** UI sends Intents/Events → Logic processes them → State is emitted back to the UI. Never mutate state directly from the View.
- **Immutability:** State objects and Data Transfer Objects (DTOs) should be immutable. Create new copies to reflect changes.
- **Single Source of Truth:** Data should be managed in a repository or central store to prevent desynchronization between different screens.

## 4. API & Error Handling Contracts
- **Standardized Responses:** Define a universal wrapper for responses (e.g., `Result<Success, Failure>`) rather than relying purely on try/catch blocks that leak framework specifics.
- **Fail Early, Fail Loudly:** Validate data at the boundaries (Data layer) before it enters the Domain layer.
- **Graceful Degradation:** The UI should always have a defined fallback (cached data, error screen, retry mechanism) when network or data layers fail.

## 5. Technology Selection (The "Why")
When proposing specific technologies (e.g., switching from KMM to Flutter, or choosing a local database), the Architect MUST document the decision using an ADR (Architecture Decision Record) evaluating:
- Why this tool over the alternative?
- What are the trade-offs (Performance vs. Speed of development)?
- Does it violate the Clean Architecture boundaries?

## 6. S.O.L.I.D. Principles in Practice
Regardless of the language (Kotlin, Dart, TypeScript), code must adhere to these foundational principles:
- **(S) Single Responsibility:** A class or module should have only one reason to change. *Example:* Do not mix API parsing logic with UI rendering in the same file.
- **(O) Open/Closed:** Software entities should be open for extension but closed for modification. *Example:* Use interfaces so new features can be added by creating new implementations, rather than modifying existing classes with `if/else` chains.
- **(L) Liskov Substitution:** Derived classes must be substitutable for their base classes without breaking functionality. *Example:* If an interface promises to return a cached string, its implementations shouldn't throw unexpected `NotImplemented` exceptions.
- **(I) Interface Segregation:** Many client-specific interfaces are better than one general-purpose interface. *Example:* Don't force a UI component to implement a massive 20-method `DatabaseHelper` interface if it only needs `getUser()`.
- **(D) Dependency Inversion:** Depend upon abstractions (interfaces), not concretions (concrete classes). *Example:* A `CheckoutUseCase` should depend on a `PaymentGateway` interface, not a specific `StripeSDK` class. This allows swapping Stripe for PayPal seamlessly.

## 7. Backend-for-Frontend (BFF) Pattern
When designing full-stack systems or complex mobile/web applications, utilize the BFF pattern to optimize the client-server interaction:
- **Purpose:** Do not force the client (Mobile/Web) to orchestrate complex logic by making dozens of API calls to different microservices. Instead, create a dedicated intermediate layer (the BFF).
- **Data Aggregation:** The BFF should fetch data from various backend microservices, aggregate it, and return a single, customized JSON payload specifically formatted for the client's screen.
- **Client-Specific:** You may have different BFFs for different platforms if their UI needs differ significantly (e.g., `iOS-BFF`, `Web-Admin-BFF`).
- **Logic Offloading:** Move heavy data transformations, filtering, and sorting out of the mobile/web app and into the BFF to save battery and improve performance on edge devices.
