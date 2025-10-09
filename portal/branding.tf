resource "konnect_portal_logo" "my_portallogo" {
  data      = "data:image/png;base64,${filebase64("${path.module}/assets/logo.png")}"
  portal_id = konnect_portal.my_portal.id
}

resource "konnect_portal_favicon" "my_portalfavicon" {
  data      = "data:image/png;base64,${filebase64("${path.module}/assets/favicon.ico")}"
  portal_id = konnect_portal.my_portal.id
}