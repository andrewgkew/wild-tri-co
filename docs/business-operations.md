# Business Operations Reports

## Endpoint
```
GET /business-operations/reports
```

Retrieve business performance data, such as financial summaries and resource utilization.

---

## Query Parameters
| Name | Type | Description | Default |
|------|------|--------------|----------|
| `limit` | integer | Max number of items per page | 20 |
| `offset` | integer | Number of items to skip | 0 |
| `report_type` | string | Filter by report type (`financial_summary`, `customer_acquisition`, `resource_utilization`) | — |

---

## Example Request
```bash
curl -X GET "https://api.example.com/v1/business-operations/reports?report_type=financial_summary"   -H "Authorization: Bearer YOUR_API_TOKEN"   -H "Accept: application/json"
```

---

## Example Response
```json
{
  "data": [{
    "report_id": "750e8400-e29b-41d4-a716-446655440002",
    "report_type": "financial_summary",
    "report_date": "2024-01-01T12:00:00Z",
    "report_data": {}
  }],
  "meta": {
    "page": {
      "offset": 0,
      "limit": 20,
      "total": 100,
      "estimated_total": true
    }
  }
}
```

---

## Typical Use Case
Used by **admins** to evaluate business efficiency, customer acquisition, and revenue trends.
