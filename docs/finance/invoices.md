# Invoices

## Endpoint Summary
| Method | Endpoint | Description |
|---------|-----------|-------------|
| GET | `/invoices` | List all invoices |
| POST | `/invoices` | Create a new invoice |
| GET | `/invoices/{invoice_id}` | Retrieve a specific invoice |
| PUT | `/invoices/{invoice_id}` | Update an existing invoice |
| DELETE | `/invoices/{invoice_id}` | Delete an invoice |

---

## Authentication
Include your API key in the request header:
```http
apiKey: YOUR_API_KEY
```

---

## Example: List Invoices
```bash
curl -X GET "https://api.wildtrico.com/invoices?limit=10" \
  -H "apiKey: YOUR_API_KEY" \
  -H "Accept: application/json"
```

**Query Parameters:**
| Name | Type | Description | Default |
|------|------|-------------|----------|
| `limit` | integer | Max items to return | 20 |
| `offset` | integer | Items to skip | 0 |

---

## Example: Create an Invoice
```bash
curl -X POST "https://api.wildtrico.com/invoices" \
  -H "apiKey: YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "client_name": "John Doe",
    "invoice_date": "2024-01-20",
    "total_amount": 1500.00,
    "status": "sent"
  }'
```

---

## Response Example
```json
{
  "id": "123e4567-e89b-12d3-a456-426614174000",
  "invoice_number": "INV-2024-001",
  "client_name": "John Doe",
  "invoice_date": "2024-01-20",
  "total_amount": 1500.00,
  "status": "sent"
}
```
