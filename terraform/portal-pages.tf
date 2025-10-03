resource "konnect_portal_page" "homepage" {
  content        = file("${path.module}/pages/home.md")
  description    = "Start building and innovating with our APIs"
  portal_id      = konnect_portal.my_portal.id
  slug           = "/"
  status         = "published"
  title          = "Wild Tri Co. API"
  visibility     = "public"
}

resource "konnect_portal_page" "apis" {
  content        = file("${path.module}/pages/apis.md")
  description    = "Explore a wide range of API products in our Developer Portal designed for fast, flexible development."
  portal_id      = konnect_portal.my_portal.id
  slug           = "/apis"
  status         = "published"
  title          = "APIs"
  visibility     = "public"
}

resource "konnect_portal_page" "getting_started" {
  content        = file("${path.module}/pages/getting-started.md")
  description    = "Get started with our new Developer Portal!"
  portal_id      = konnect_portal.my_portal.id
  slug           = "/getting-started"
  status         = "published"
  title          = "Getting Started"
  visibility     = "public"
}