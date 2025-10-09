terraform {
  required_providers {
    konnect = {
      source  = "kong/konnect"
      version = "3.2.0"
    }
    terracurl = {
      source = "devops-rob/terracurl"
      version = "2.1.0"
    }
  }
}
