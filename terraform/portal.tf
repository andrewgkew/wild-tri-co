resource "konnect_portal" "my_portal" {
  authentication_enabled               = true
  auto_approve_applications            = true
  auto_approve_developers              = true
  default_api_visibility               = "private"
  default_application_auth_strategy_id = "dee3f180-36c3-44bb-8567-6d32e08387e9"
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
