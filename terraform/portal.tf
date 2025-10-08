resource "konnect_portal" "my_portal" {
  authentication_enabled               = true
  auto_approve_applications            = true
  auto_approve_developers              = true
  default_api_visibility               = "private"
  default_application_auth_strategy_id = konnect_application_auth_strategy.key_auth.id
  default_page_visibility              = "private"
  description                          = "Developer Portal for Wild Tri Co."
  display_name                         = "Wild Tri Co. Developer Portal"
  force_destroy                        = "false"
  labels = {
    type = "internal"
  }
  name         = "Wild Tri Co."
  rbac_enabled = true
}

resource "konnect_application_auth_strategy" "key_auth" {
  key_auth = {
    configs = {
      key_auth = {
        key_names = [
          "X-API-Key"
        ]
      }
    }
    display_name = "Internal Portal Key Auth"
    labels = {
      portal = "internal"
    }
    name          = "Internal Portal Key Auth"
    strategy_type = "key_auth"
  }
}