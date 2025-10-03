resource "konnect_portal" "my_portal" {
  authentication_enabled               = false
  auto_approve_applications            = false
  auto_approve_developers              = false
  default_api_visibility               = "public"
  default_application_auth_strategy_id = "dee3f180-36c3-44bb-8567-6d32e08387e9"
  default_page_visibility              = "public"
  description                          = "Developer Portal for Wild Tri Co."
  display_name                         = "Wild Tri Co. Developer Portal"
  force_destroy                        = "false"
  labels = {
    type = "internal"
  }
  name         = "Wild Tri Co."
  rbac_enabled = true
}
