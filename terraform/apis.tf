locals {
  spec_files = fileset("${path.module}/../specs", "*.yaml")
  docs_files = fileset("${path.module}/../docs", "*.md")

  apis = {
    for f in local.spec_files :
    trimsuffix(f, ".yaml") => yamldecode(file("${path.module}/../specs/${f}"))
  }

  docs = {
    for f in local.docs_files :
    trimsuffix(f, ".yaml") => yamldecode(file("${path.module}/../docs/${f}"))
  }
}

resource "konnect_api" "apis" {
  for_each = local.apis

  name         = each.value.info.title
  slug         = each.value.info.x-konnect.slug
  version      = each.value.info.version
  description  = each.value.info.description
  attributes = jsonencode({
    for k, v in each.value.info.x-konnect.attributes : k => (
      can(v[0]) ? toset(v) : v
    )
  })
  spec_content = file("${path.module}/../specs/${each.key}.yaml")
}

resource "konnect_api_publication" "api_publications" {
  for_each                   = konnect_api.apis
  api_id                     = each.value.id
  auth_strategy_ids          = [konnect_application_auth_strategy.key_auth.id]
  auto_approve_registrations = true
  portal_id                  = konnect_portal.my_portal.id
  visibility                 = "public"
}

resource "konnect_api_document" "my_apidocument" {
  for_each           = local.docs
  api_id             = "11a505a1-f179-440e-821c-475941d4241d"
  content            = file("${path.module}/../docs/${each.key}.md")
  slug               = each.key
  status             = "published"
  title              = title(replace(each.key, "-", " "))
}