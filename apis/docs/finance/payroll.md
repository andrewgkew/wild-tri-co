# Payroll

## Endpoint Summary
| Method | Endpoint | Description |
|---------|-----------|-------------|
| GET | `/payroll` | List all payroll entries |
| POST | `/payroll` | Create a new payroll entry |

---

## Authentication
Include your API key in the request header:
```http
apiKey: YOUR_API_KEY
```

---

## Example: List Payroll Entries
```bash
curl -X GET "https://api.wildtrico.com/payroll?limit=5" \
  -H "apiKey: YOUR_API_KEY" \
  -H "Accept: application/json"
```

---

## Example: Create Payroll Entry
```bash
curl -X POST "https://api.wildtrico.com/payroll" \
  -H "apiKey: YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "employee_name": "Jane Smith",
    "payment_date": "2024-01-15",
    "amount": 3000.00
  }'
```

---

## Example Response
```json
{
  "id": "456a7890-abcd-12ef-3456-654321fedcba",
  "employee_name": "Jane Smith",
  "payment_date": "2024-01-15",
  "amount": 3000.00
}
```
