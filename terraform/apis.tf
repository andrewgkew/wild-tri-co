locals {
  spec_files = fileset("${path.module}/../specs", "*.yaml")

  apis = {
    for f in local.spec_files :
    trimsuffix(f, ".yaml") => yamldecode(file("${path.module}/../specs/${f}"))
  }
}

resource "konnect_api" "apis" {
  for_each = local.apis

  name         = each.value.info.title
  slug         = each.value.info.x-konnect.slug
  version      = each.value.info.version
  description  = each.value.info.description
  attributes   = jsonencode(each.value.info.x-konnect.attributes)
  spec_content = file("${path.module}/../specs/${each.key}.yaml")
}

resource "konnect_api_publication" "api_publications" {
  for_each                   = konnect_api.apis
  api_id                     = each.value.id
  auth_strategy_ids          = ["dee3f180-36c3-44bb-8567-6d32e08387e9"]
  auto_approve_registrations = true
  portal_id                  = konnect_portal.my_portal.id
  visibility                 = "public"
}
