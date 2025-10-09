api_config = {
  "analytics" = {
    current_version = "1.0.0"
    api_slug        = "analytics"
    api_name        = "Triathlon Business Reports and Insights API"
    api_description = "API for generating reports and insights on athlete performance and business operations for a triathlon business."
    api_visibility  = "public"
    labels = {}
    attributes = {
      domain            = ["Business"]
      use_case          = ["Insights"]
      audience          = ["Admin"]
      data_type         = ["Reports"]
      business_function = ["Analytics"]
      workflow_stage    = ["Analyze"]
      integration_type  = ["Analytics"]
      access_level      = ["Internal"]
      complexity_level  = ["Analytics APIs"]
      industry_focus    = ["Sports Tech"]
    }
    versions = [
      {
        version  = "1.0.0"
        location = "./specs/analytics-api.yaml"
        type     = "yaml"
      }
    ]
    api_docs = {
    "overview" = {
        title = "Overview"
        location = "./docs/analytics/overview.md"
      }
    }
    portal = "Wild Tri Co."

  }
}