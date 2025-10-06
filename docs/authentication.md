# Authentication

## Overview
The Analytics API uses **API Key Authentication** to secure access.

You must include your API key in the header of every request using the `X-API-Key` header.

---

## Header Format

```http
X-API-Key: YOUR_API_KEY
```

**Example Request:**
```bash
curl -H "X-API-Key: YOUR_API_KEY" \
  https://api.example.com/v1/athlete-performance/reports
```

---

## Getting an API Key
API keys are provisioned through your organization’s developer console or by contacting  
**API Support:** [support@wildtrico.com](mailto:support@wildtrico.com)

---

## Security Notes
- Keep your API key secret — never share or embed it in client-side code.  
- Rotate keys periodically for better security.  
- If your key is compromised, revoke it immediately via the developer portal.
