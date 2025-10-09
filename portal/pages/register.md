---
title: "Sign up"
description: "Sign up for an account."
---

::page-hero
---
full-width: true
full-height: true
title-font-size: "clamp(32px, 5vw, 48px)"
title-line-height: "clamp(36px, 5vw, 56px)"
title-font-weight: "600"
description-font-size: "clamp(16px, 5vw, 18px)"
description-line-height: "clamp(24px, 5vw, 28px)"
description-color: "var(--kui-color-text-neutral)"
vertical-align: "center"
image:
  src: "https://raw.githubusercontent.com/andrewgkew/wild-tri-co/refs/heads/main/assets/hero.svg"
  position: "right"
  border-radius: "15px"
  max-width: "60%"
styles: |
  .page-hero-textblock {
    padding: 40px !important;
    background: #F7F7F7;
    border-radius: 15px;
  }

  ul {
    color: var(--kui-color-text-neutral);
    list-style: none;
    font-size: 14px;
    line-height: 20px;
    margin: 20px 0 0 8px;
    padding: 0;
  }
---
#title
Sign up

#description
Sign up and get started building with our APIs&nbsp;today!

- 🔍 &nbsp;Explore API documentation and OpenAPI specs
- 🛠️ &nbsp;Register and manage your apps
- 🔐 &nbsp;Authenticate and start making requests

  ::form-register
  ---
  margin: "var(--kui-space-70) var(--kui-space-0) var(--kui-space-0)"
  ---
  ::
::
