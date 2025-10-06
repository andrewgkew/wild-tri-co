# Use Case Recipes

## 1. Generate Weekly Athlete Training Summary
Fetch training data for a specific athlete each week:
```bash
curl -X GET "https://api.example.com/v1/athlete-performance/reports?athlete_id=650e8400-e29b-41d4-a716-446655440001&report_type=training_summary"
```

---

## 2. Monthly Financial Report
Retrieve financial reports for the last month:
```bash
curl -X GET "https://api.example.com/v1/business-operations/reports?report_type=financial_summary&limit=50"
```

---

## 3. Combine Reports for Dashboard
Integrate athlete and business reports into analytics dashboards for performance monitoring.
