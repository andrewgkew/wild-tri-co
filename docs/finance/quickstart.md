# Quickstart Guide

Get started with the **Finance API** in minutes!

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
```
https://api.example.com/finance
```

---

## 3. Example Request
Retrieve all invoices:

```bash
curl -X GET "https://api.example.com/finance/invoices?limit=5" \
  -H "X-API-Key: YOUR_API_KEY" \
  -H "Accept: application/json"
```

**Expected Response:**
```json
{
  "data": [
    {
      "id": "123e4567-e89b-12d3-a456-426614174000",
      "invoice_number": "INV-2024-001",
      "client_name": "John Doe",
      "invoice_date": "2024-01-20",
      "total_amount": 1500.00,
      "status": "sent"
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
