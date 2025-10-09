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
      "quickstart" = {
        title = "Quickstart"
        location = "./docs/analytics/quickstart.md"
      }
      "authentication" = {
        title = "Authentication"
        location = "./docs/analytics/authentication.md"
      }
      "changelog" = {
        title = "Changelog"
        location = "./docs/analytics/changelog.md"
      }
      "errors" = {
        title = "Errors"
        location = "./docs/analytics/errors.md"
      }
      "recipes" = {
        title = "Recipes"
        location = "./docs/analytics/recipes.md"
      }
      "business-operations" = {
        title = "Business Operations"
        location = "./docs/analytics/business-operations.md"
      }
      "athlete-performance" = {
        title = "Athlete Performance"
        location = "./docs/analytics/athlete-performance.md"
      }
      "pagination-and-filtering" = {
        title = "Pagination & Filtering"
        location = "./docs/analytics/pagination-and-filtering.md"
      }
    }
    portal = "Wild Tri Co."

  }
  "atheletes" = {
    current_version = "1.4.0"
    api_slug        = "athlete"
    api_name        = "Athlete Management API"
    api_description = "API for managing athlete profiles and performance data."
    api_visibility  = "public"
    labels = {}
    attributes = {
      domain            = ["Athlete"]
      use_case          = ["Performance"]
      audience          = ["Athlete"]
      data_type         = ["Profiles"]
      business_function = ["Training"]
      workflow_stage    = ["Train"]
      integration_type  = ["Core System"]
      access_level      = ["Partner"]
      complexity_level  = ["Basic CRUD"]
      industry_focus    = ["Sports Tech"]
    }
    versions = [
      {
        version  = "1.4.0"
        location = "./specs/athletes-api.yaml"
        type     = "yaml"
      }
    ]
    api_docs = {
    }
    portal = "Wild Tri Co."

  }
  "coaching" = {
    current_version = "1.2.0"
    api_slug        = "coaching"
    api_name        = "Triathlon Coaching and Communication API"
    api_description = "API for managing coaching sessions, athlete communication, and related resources for a triathlon business."
    api_visibility  = "public"
    labels = {}
    attributes = {
      domain            = ["Athlete"]
      use_case          = ["Engagement"]
      audience          = ["Coach"]
      data_type         = ["Communication"]
      business_function = ["Coaching"]
      workflow_stage    = ["Train"]
      integration_type  = ["Support Services"]
      access_level      = ["Internal"]
      complexity_level  = ["Composite APIs"]
      industry_focus    = ["Sports Tech"]
    }
    versions = [
      {
        version  = "1.2.0"
        location = "./specs/coaching-api.yaml"
        type     = "yaml"
      }
    ]
    api_docs = {}
    portal = "Wild Tri Co."

  }
  "coffee-shop" = {
    current_version = "1.6.0"
    api_slug        = "coffee-shop"
    api_name        = "Coffee Shop Management API"
    api_description = "API for managing coffee shop operations, including stock, orders, and menu items."
    api_visibility  = "public"
    labels = {}
    attributes = {
      domain            = ["Business"]
      use_case          = ["Commerce"]
      audience          = ["Athlete"]
      data_type         = ["Transactions"]
      business_function = ["Retail"]
      workflow_stage    = ["Community"]
      integration_type  = ["Payment"]
      access_level      = ["Public"]
      complexity_level  = ["Basic CRUD"]
      industry_focus    = ["Retail"]
    }
    versions = [
      {
        version  = "1.6.0"
        location = "./specs/coffee-shop-api.yaml"
        type     = "yaml"
      }
    ]
    api_docs = {}
    portal = "Wild Tri Co."

  }
  "events" = {
    current_version = "1.1.5"
    api_slug        = "events"
    api_name        = "Triathlon Event and Athlete Management APII"
    api_description = "API for managing athletes, events, and registrations for triathlon events."
    api_visibility  = "public"
    labels = {}
    attributes = {
      domain            = ["Events"]
      use_case          = ["Operations"]
      audience          = ["Admin"]
      data_type         = ["Schedules"]
      business_function = ["Event Mgmt"]
      workflow_stage    = ["Register"]
      integration_type  = ["Core System"]
      access_level      = ["Public"]
      complexity_level  = ["Composite"]
      industry_focus    = ["Event Management"]
    }
    versions = [
      {
        version  = "1.1.5"
        location = "./specs/events-api.yaml"
        type     = "yaml"
      }
    ]
    api_docs = {}
    portal = "Wild Tri Co."

  }
  "finance" = {
    current_version = "1.3.0"
    api_slug        = "finance"
    api_name        = "Triathlon Business Finance API"
    api_description = "API for managing finances, reports, and payroll for a triathlon business."
    api_visibility  = "public"
    labels = {}
    attributes = {
      domain            = ["Business"]
      use_case          = ["Commerce"]
      audience          = ["Admin"]
      data_type         = ["Transactions"]
      business_function = ["Finance"]
      workflow_stage    = ["Any"]
      integration_type  = ["Payment"]
      access_level      = ["Internal"]
      complexity_level  = ["Composite"]
      industry_focus    = ["Retail"]
    }
    versions = [
      {
        version  = "1.3.0"
        location = "./specs/finance-api.yaml"
        type     = "yaml"
      },
      {
        version  = "1.2.0"
        location = "./specs/finance-api-v1.2.yaml"
        type     = "yaml"
      }
    ]
    api_docs = {
      "overview" = {
        title = "Overview"
        location = "./docs/finance/overview.md"
      }
    }
    portal = "Wild Tri Co."

  }
  "inventory" = {
    current_version = "1.0.0"
    api_slug        = "inventory"
    api_name        = "Triathlon Equipment Inventory and Sales API"
    api_description = "PI for managing triathlon equipment inventory and sales."
    api_visibility  = "public"
    labels = {}
    attributes = {
      domain            = ["Business"]
      use_case          = ["Commerce"]
      audience          = ["Athlete"]
      data_type         = ["Inventory"]
      business_function = ["Retail"]
      workflow_stage    = ["Prepare"]
      integration_type  = ["Commerce"]
      access_level      = ["Internal"]
      complexity_level  = ["Basic CRUD"]
      industry_focus    = ["Retail"]
    }
    versions = [
      {
        version  = "1.0.0"
        location = "./specs/inventory-api.yaml"
        type     = "yaml"
      }
    ]
    api_docs = {}
    portal = "Wild Tri Co."

  }
  "logistics" = {
    current_version = "1.0.0"
    api_slug        = "logistics"
    api_name        = "Triathlon Logistics API"
    api_description = "API for managing logistics and delivery operations for a triathlon business."
    api_visibility  = "public"
    labels = {}
    attributes = {
      domain            = ["Events"]
      use_case          = ["Operations"]
      audience          = ["Admin"]
      data_type         = ["Schedules"]
      business_function = ["Logistics"]
      workflow_stage    = ["Compete"]
      integration_type  = ["Support Services"]
      access_level      = ["Internal"]
      complexity_level  = ["Composite"]
      industry_focus    = ["Event Management"]
    }
    versions = [
      {
        version  = "1.0.0"
        location = "./specs/logistics-api.yaml"
        type     = "yaml"
      }
    ]
    api_docs = {}
    portal = "Wild Tri Co."

  }
  "training" = {
    current_version = "1.1.0"
    api_slug        = "training"
    api_name        = "Triathlon Training Plan API"
    api_description = "API for creating and managing training plans for triathlon athletes."
    api_visibility  = "public"
    labels = {}
    attributes = {
      domain            = ["Athlete"]
      use_case          = ["Performance"]
      audience          = ["Coach"]
      data_type         = ["Schedules"]
      business_function = ["Training"]
      workflow_stage    = ["Plan"]
      integration_type  = ["Support Services"]
      access_level      = ["Partner"]
      complexity_level  = ["Composite"]
      industry_focus    = ["Sports Tech"]
    }
    versions = [
      {
        version  = "1.1.0"
        location = "./specs/training-plan-api.yaml"
        type     = "yaml"
      }
    ]
    api_docs = {}
    portal = "Wild Tri Co."

  }
  "users" = {
    current_version = "1.6.0"
    api_slug        = "users"
    api_name        = "User Account and Role Management API"
    api_description = "API for managing user accounts, authentication, and roles within a triathlon business."
    api_visibility  = "public"
    labels = {}
    attributes = {
      domain            = ["Business"]
      use_case          = ["Operations"]
      audience          = ["Admin"]
      data_type         = ["Profiles"]
      business_function = ["User Mgmt"]
      workflow_stage    = ["Any"]
      integration_type  = ["Core System"]
      access_level      = ["Internal"]
      complexity_level  = ["Basic CRUD"]
      industry_focus    = ["Business Operations"]
    }
    versions = [
      {
        version  = "1.6.0"
        location = "./specs/users-api.yaml"
        type     = "yaml"
      }
    ]
    api_docs = {}
    portal = "Wild Tri Co."

  }
}