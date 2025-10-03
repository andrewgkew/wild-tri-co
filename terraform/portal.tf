# resource "konnect_portal_auth" "my_portalauth" {
#   basic_auth_enabled      = true
#   idp_mapping_enabled     = true
#   konnect_mapping_enabled = false
#   oidc_auth_enabled       = false
#   oidc_claim_mappings = {
#     email  = "email"
#     groups = "custom-group-claim"
#     name   = "name"
#   }
#   oidc_client_id     = "...my_oidc_client_id..."
#   oidc_client_secret = "...my_oidc_client_secret..."
#   oidc_issuer        = "...my_oidc_issuer..."
#   oidc_scopes = [
#     "..."
#   ]
#   oidc_team_mapping_enabled = true
#   portal_id                 = "f32d905a-ed33-46a3-a093-d8f536af9a8a"
#   saml_auth_enabled         = false
# }

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
