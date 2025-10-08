resource "konnect_portal_team" "team" {
  description = "Portal Consumers"
  name        = "Portal Consumers"
  portal_id   = konnect_portal.my_portal.id
}