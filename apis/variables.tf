variable "konnect_server_url" {
  type        = string
  default     = "https://eu.api.konghq.com"
  description = "The URL used to communicate with Konnect"
}

variable "konnect_system_account_access_token" {
  type        = string
  description = "System account access token for Konnect"
}

variable "api_config" {
  description = "API configuration object"
  type = map(object({
    current_version = string
    api_slug        = string
    api_name        = string
    api_description = string
    api_visibility  = string
    labels          = map(string)
    attributes      = map(string)
    versions = list(object({
      version  = string
      location = string
      type     = string
    }))
    api_docs = map(object({
      title = string
      location = string
    }))
    portal = string
  }))

  default = {}
}