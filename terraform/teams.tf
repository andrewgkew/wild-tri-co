resource "konnect_portal_team" "team" {
  description = "Portal Consumers"
  name        = "Portal Consumers"
  portal_id   = konnect_portal.my_portal.id
}

resource "terracurl_request" "team_role" {
  name           = "portal_team_roles"

  # Create instructions for Terraform
  url            = "https://eu.api.konghq.com/v3/portals/${konnect_portal.my_portal.id}/teams/${konnect_portal_team.team.id}/assigned-roles"
  method         = "POST"
  request_body   = <<EOF
  {
    "role_name": "API Consumer",
    "entity_id": "*",
    "entity_type_name": "Services",
    "entity_region": "eu"
  }
EOF

  headers = {
    Accept = "application/json, application/problem+json"
    Content-Type = "application/json"
    Authorization = "Bearer ${var.konnect_system_account_access_token}"
  }

  response_codes = [201]

  skip_destroy = true
}