# Error Handling

## Error Format
All error responses follow this structure:

```json
{
  "code": "400",
  "message": "Invalid input"
}
```

---

## Common HTTP Status Codes
| Code | Meaning | Description |
|------|----------|-------------|
| 200 | OK | Request succeeded |
| 201 | Created | Resource successfully created |
| 204 | No Content | Resource deleted |
| 400 | Bad Request | Invalid request parameters |
| 404 | Not Found | Resource not found |
| 500 | Internal Server Error | Server error |
