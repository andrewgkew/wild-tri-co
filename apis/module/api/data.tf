data "konnect_portal" "portal" {
  filter = {
    name = {
      contains = var.portal
    }
  }
}

data "local_file" "local_content" {
  for_each = {
    for v in var.versions : v.version => v
  }
  filename = each.value.location
}