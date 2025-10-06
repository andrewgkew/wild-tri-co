# Pagination and Filtering

## Pagination
All list endpoints use standard pagination with the following parameters:

| Parameter | Type | Description | Default |
|------------|------|-------------|----------|
| `limit` | integer | Number of items per page (1–100) | 20 |
| `offset` | integer | Number of items to skip | 0 |

**Example:**
```
GET /athlete-performance/reports?limit=10&offset=20
```

---

## Filtering
Endpoints support filtering through query parameters like `report_type` and `athlete_id`.

**Example:**
```
GET /athlete-performance/reports?report_type=race_analysis
```

**Common Filters:**
- `athlete_id` — Target a specific athlete
- `report_type` — Filter reports by category
