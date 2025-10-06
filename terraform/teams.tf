resource "konnect_portal_team" "team" {
  description = "Portal Consumers"
  name        = "Portal Consumers"
  portal_id   = konnect_portal.my_portal.id
}

resource "konnect_team_role" "teamrole" {
  entity_id        = "*"
  entity_region    = "*"
  entity_type_name = "APIs"
  role_name        = "API Consumer"
  team_id          = konnect_portal_team.team.id
}