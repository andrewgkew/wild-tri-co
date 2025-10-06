# Financial Reports

## Endpoint
```
GET /reports/monthly
```

Generate a monthly financial report summarizing revenue, expenses, and profit.

---

## Authentication
Include your API key in the request header:
```http
X-API-Key: YOUR_API_KEY
```

---

## Parameters
| Name | Type | Required | Description |
|------|------|-----------|-------------|
| `month` | string | Yes | Month in format `YYYY-MM` |

---

## Example Request
```bash
curl -X GET "https://api.example.com/finance/reports/monthly?month=2024-01" \
  -H "X-API-Key: YOUR_API_KEY" \
  -H "Accept: application/json"
```

---

## Example Response
```json
{
  "month": "2024-01",
  "revenue": 10000.00,
  "expenses": 5000.00,
  "net_profit": 5000.00
}
```
