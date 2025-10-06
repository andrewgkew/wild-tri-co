# Authentication

## Overview
The Analytics API uses **Bearer Token Authentication** for secure access.

Include your access token in every request header:

```http
Authorization: Bearer YOUR_API_TOKEN
```

---

## Obtaining an API Key
API keys are provisioned to registered developers. Contact [support@wildtrico.com](mailto:support@wildtrico.com) for credentials.

---

## Token Expiration
Tokens may expire periodically. Refresh them using your organization’s developer console or support portal.

---

## Example
```bash
curl -H "Authorization: Bearer YOUR_API_TOKEN" https://api.example.com/v1/business-operations/reports
```
