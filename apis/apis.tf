module "apis" {
  for_each = var.api_config
  source = "./module/api"

  current_version = each.value.current_version
  api_slug = each.value.api_slug
  api_name = each.value.api_name
  api_description = each.value.api_description
  api_visibility = each.value.api_visibility
  api_docs = each.value.api_docs
  labels = each.value.labels
  attributes = each.value.attributes
  versions = each.value.versions
  portal = each.value.portal
}