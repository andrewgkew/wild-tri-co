# Quickstart Guide

Get started with the **Analytics API** in minutes!

---

## 1. Authentication
All endpoints require an **API key** sent via the `X-API-Key` header.

**Example Header:**
```http
X-API-Key: YOUR_API_KEY
Accept: application/json
```

---

## 2. Base URL
Use the following base URL for all API requests:
```
https://api.example.com/v1
```

---

## 3. Example Request
Retrieve athlete performance reports:

```bash
curl -X GET "https://api.example.com/v1/athlete-performance/reports?limit=5" \
  -H "X-API-Key: YOUR_API_KEY" \
  -H "Accept: application/json"
```

**Expected Response:**
```json
{
  "data": [
    {
      "report_id": "550e8400-e29b-41d4-a716-446655440000",
      "athlete_id": "650e8400-e29b-41d4-a716-446655440001",
      "report_type": "race_analysis",
      "report_date": "2024-01-01T12:00:00Z",
      "report_data": {}
    }
  ],
  "meta": {
    "page": {
      "offset": 0,
      "limit": 5,
      "total": 100,
      "estimated_total": true
    }
  }
}
```

You're now ready to explore the API further!
