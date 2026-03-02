# FEATURE DESIGN: [Feature Name]

## Scope

**Affects:**
- [ ] Client
- [ ] Backend
- [ ] Database
- [ ] External Services

## Technical Approach

<!-- High-level description of how this will be built -->

## Client Changes

### Components

| Component | Action | Description |
|-----------|--------|-------------|
| | create / modify | |

### State Changes

<!-- New state, state modifications -->

### Routes

| Route | Component | Auth Required |
|-------|-----------|---------------|
| | | |

## Backend Changes

### API Endpoints

| Method | Endpoint | Description | Auth |
|--------|----------|-------------|------|
| | | | |

### Request/Response

**POST /api/v1/example**

Request:
```json
{
}
```

Response:
```json
{
}
```

### Services

| Service | Action | Description |
|---------|--------|-------------|
| | create / modify | |

### Database

**New Tables/Collections:**

```sql
-- Table definition
```

**Migrations needed:**
- [ ] Migration 1
- [ ] Migration 2

## Data Flow

```
User Action
    ↓
[Client Component]
    ↓
[API Call]
    ↓
[Controller]
    ↓
[Service]
    ↓
[Repository]
    ↓
[Database]
```

## External Integrations

| Service | Purpose | New/Existing |
|---------|---------|--------------|
| | | |

## Security Considerations

- [ ] Authentication required?
- [ ] Authorization rules?
- [ ] Input validation?
- [ ] Rate limiting?

## Performance Considerations

- [ ] Caching needed?
- [ ] Pagination?
- [ ] Lazy loading?

## Related ADRs

<!-- Link to architectural decisions related to this feature -->

-
