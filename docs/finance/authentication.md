# Authentication

## Overview
The Finance API uses **API Key Authentication** for all requests.

Include your key in the `X-API-Key` header with every request.

---

## Example Header
```http
X-API-Key: YOUR_API_KEY
```

**Example Request:**
```bash
curl -H "X-API-Key: YOUR_API_KEY" \
  https://api.example.com/finance/invoices
```

---

## Obtaining an API Key
API keys are issued to authorized users or systems.  
Contact **API Support:** [support@wildtrico.com](mailto:support@wildtrico.com)

---

## Security Notes
- Keep your API key secret. Do not embed it in client-side code or repositories.  
- Rotate keys regularly for better security.  
- Revoke compromised keys immediately.
