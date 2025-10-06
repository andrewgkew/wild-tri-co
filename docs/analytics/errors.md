# Error Handling

## Error Structure
All error responses follow a consistent JSON format.

**Example:**
```json
{
  "code": "400",
  "message": "Bad Request"
}
```

---

## Common Status Codes
| Code | Meaning | Description |
|------|----------|-------------|
| `200` | OK | Successful request |
| `400` | Bad Request | Invalid parameter or syntax error |
| `500` | Internal Server Error | Unexpected issue on the server |

---

## Example Scenarios
- **400** — `report_type` not recognized  
- **500** — Database connection issue or unhandled exception
