variable "konnect_server_url" {
  type        = string
  default     = "https://eu.api.konghq.com"
  description = "The URL used to communicate with Konnect"
}

variable "konnect_system_account_access_token" {
  type        = string
  description = "System account access token for Konnect"
}