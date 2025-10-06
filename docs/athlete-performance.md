# Athlete Performance Reports

## Endpoint
```
GET /athlete-performance/reports
```

Retrieve athlete performance analytics, such as race analysis or training summaries.

---

## Query Parameters
| Name | Type | Description | Default |
|------|------|--------------|----------|
| `limit` | integer | Max number of items per page | 20 |
| `offset` | integer | Number of items to skip | 0 |
| `athlete_id` | string (UUID) | Filter by athlete ID | — |
| `report_type` | string | Filter by report type (`race_analysis`, `training_summary`, `progress_tracking`) | — |

---

## Example Request
```bash
curl -X GET "https://api.example.com/v1/athlete-performance/reports?report_type=training_summary"   -H "Authorization: Bearer YOUR_API_TOKEN"   -H "Accept: application/json"
```

---

## Example Response
```json
{
  "data": [{
    "report_id": "550e8400-e29b-41d4-a716-446655440000",
    "athlete_id": "650e8400-e29b-41d4-a716-446655440001",
    "report_type": "training_summary",
    "report_date": "2024-01-01T12:00:00Z",
    "report_data": {}
  }],
  "meta": {
    "page": {
      "offset": 0,
      "limit": 20,
      "total": 100,
      "estimated_total": false
    }
  }
}
```

---

## Typical Use Case
Used by **coaches** to review athlete progress and detect performance trends.
