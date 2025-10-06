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
  https://api.wildtrico.com/finance/invoices
```

---

## Obtaining an API Key
API keys are generated on a self-service basis. To generate a key navigate to

1. Profile (top right)
2. My Applications
3. Create Application
4. Navigate to Credentials tab
5. Create credentials

---

## Security Notes
- Keep your API key secret. Do not embed it in client-side code or repositories.  
- Rotate keys regularly for better security.  
- Revoke compromised keys immediately.
