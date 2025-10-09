resource "konnect_portal_snippet" "hero-image-snippet" {
  content     = file("${path.module}/snippets/hero-image.md")
  description = "An example of a hero snippet containing a reusable SVG image."
  name        = "hero-image"
  portal_id   = konnect_portal.my_portal.id
  status      = "published"
  title       = "Hero Image"
  visibility  = "public"
}

resource "konnect_portal_snippet" "logo-bar-snippet" {
  content     = file("${path.module}/snippets/logo-bar.md")
  description = "An example of a snippet containing a row of SVG logos."
  name        = "logo-bar"
  portal_id   = konnect_portal.my_portal.id
  status      = "published"
  title       = "Logo Bar"
  visibility  = "public"
}