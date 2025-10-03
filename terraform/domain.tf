resource "konnect_portal_custom_domain" "domain" {
  enabled   = true
  hostname  = "developer.wildtrico.com"
  portal_id = konnect_portal.my_portal.id
  ssl = {
    domain_verification_method = "http"
  }
}