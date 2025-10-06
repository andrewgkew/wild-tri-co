locals {
  spec_files = fileset("${path.module}/../specs", "*.yaml")
  docs_analytics = fileset("${path.module}/../docs/analytics", "*.md")
  docs_finance = fileset("${path.module}/../docs/finance", "*.md")

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

resource "konnect_api_document" "apidocument_analytics" {
  for_each           = local.docs_analytics
  api_id             = "99fc63ba-6ed3-445f-9deb-4cc3db66665b"
  content            = file("${path.module}/../docs/analytics/${each.key}")
  slug               = trimsuffix(each.key,".md")
  status             = "published"
  title              = title(replace(trimsuffix(each.key,".md"), "-", " "))
}

resource "konnect_api_document" "apidocument_finance" {
  for_each           = local.docs_finance
  api_id             = "fcc1dfd3-9306-4282-bcc7-7daa3035d27d"
  content            = file("${path.module}/../docs/finance/${each.key}")
  slug               = trimsuffix(each.key,".md")
  status             = "published"
  title              = title(replace(trimsuffix(each.key,".md"), "-", " "))
}