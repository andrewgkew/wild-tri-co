# Athlete Performance Reports

## Endpoint
```
GET /athlete-performance/reports
```

Retrieve athlete performance analytics, such as race analysis or training summaries.

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
curl -X GET "https://api.example.com/v1/athlete-performance/reports?report_type=training_summary" \
  -H "X-API-Key: YOUR_API_KEY" \
  -H "Accept: application/json"
```
