# Business Operations Reports

## Endpoint
```
GET /business-operations/reports
```

Retrieve business performance data such as financial summaries and resource utilization.

---

## Authentication
All requests must include your **API key** via the `X-API-Key` header.

**Example:**
```http
X-API-Key: YOUR_API_KEY
```

---

## Example Request
```bash
curl -X GET "https://api.example.com/v1/business-operations/reports?report_type=financial_summary" \
  -H "X-API-Key: YOUR_API_KEY" \
  -H "Accept: application/json"
```
