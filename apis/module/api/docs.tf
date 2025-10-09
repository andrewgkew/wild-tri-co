resource "konnect_api_document" "docs" {
  for_each           = var.api_docs
  api_id             = konnect_api.api.id
  content            = file(each.value.location)
  slug               = each.key
  status             = "published"
  title              = each.value.title
}