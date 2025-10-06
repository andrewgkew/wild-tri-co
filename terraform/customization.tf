resource "konnect_portal_customization" "my_portalcustomization" {
  menu = {
    footer_bottom = [
    ]
    footer_sections = [
      {
        items = [
          {
            external   = false
            path       = "#"
            title      = "Pricing"
            visibility = "public"
          },
          {
            external   = false
            path       = "#"
            title      = "APIs"
            visibility = "public"
          },
          {
            external   = false
            path       = "#"
            title      = "Documentation"
            visibility = "public"
          }
        ]
        title = "Products"
      },
      {
        items = [
          {
            external   = false
            path       = "#"
            title      = "About"
            visibility = "public"
          },
          {
            external   = false
            path       = "#"
            title      = "Careers"
            visibility = "public"
          },
          {
            external   = false
            path       = "#"
            title      = "Press"
            visibility = "public"
          },
          {
            external   = false
            path       = "#"
            title      = "Events"
            visibility = "public"
          },
          {
            external   = false
            path       = "#"
            title      = "Investors"
            visibility = "public"
          }
        ]
        title = "Company"
      },
      {
        items = [
          {
            external   = false
            path       = "#"
            title      = "Terms and Conditions"
            visibility = "public"
          },
          {
            external   = false
            path       = "#"
            title      = "Data Privacy"
            visibility = "public"
          },
          {
            external   = false
            path       = "#"
            title      = "Trust and Compliance"
            visibility = "public"
          }
        ]
        title = "Legal"
      }
    ]
    main = [
      {
        external   = false
        path       = "/apis"
        title      = "APIs"
        visibility = "private"
      }
    ]
  }
  portal_id = konnect_portal.my_portal.id
  spec_renderer = {
    allow_custom_server_urls = false
    hide_deprecated          = true
    hide_internal            = false
    infinite_scroll          = false
    show_schemas             = false
    try_it_insomnia          = false
    try_it_ui                = true
  }
  theme = {
    colors = {
      primary = "#8250FF"
    }
    mode = "system"
    name = "Default"
  }
}
