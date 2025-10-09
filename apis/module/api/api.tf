resource "konnect_api" "api" {
  name         = var.api_name
  description  = var.api_description
  slug         = replace(lower(var.api_slug)," ","_")
  version      = var.current_version
  labels       = var.labels
  attributes   = jsonencode(var.attributes)
}

resource "konnect_api_publication" "api_publication" {
  api_id                      = konnect_api.api.id
  auth_strategy_ids           = [data.konnect_portal.portal.default_application_auth_strategy_id]
  auto_approve_registrations  = true
  portal_id                   = data.konnect_portal.portal.id
  visibility                  = var.api_visibility
}

resource "konnect_api_version" "versions" {
  for_each = local.decoded_versions

  api_id = konnect_api.api.id
  version = each.value.version
  spec = {
    content = jsonencode(each.value.content)
  }
}