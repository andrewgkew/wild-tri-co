variable "current_version" {
  type        = string
  description = "Current version of the API"
}

variable "api_slug" {
  type        = string
  description = "The slug of the API"
}

variable "api_name" {
  type        = string
  description = "The name of the API"
}

variable "api_description" {
  type        = string
  description = "The description of the API"
}

variable "api_visibility" {
  type        = string
  description = "The visibility of the API"
  default     = "private"
}

variable "labels" {
  type        = map(string)
  description = "Labels metadata"
  default     = {}
}

variable "attributes" {
  type        = map(string)
  description = "Attributes used to catagorize APIs"
  default     = {}
}

variable "versions" {
  description = "Versions of the API"
  type = list(object({
    version    = string
    location   = string
    type       = string
  }))

  validation {
    condition = alltrue([
      for cfg in var.versions :
      contains(["json", "yaml"], cfg.type)
    ])
    error_message = "Each type must be either 'json' or 'yaml'."
  }

  default = []
}

variable "api_docs" {
  description = "API Markdown documentation"
  type = map(object({
    title = string
    location = string
  }))

  default = {}
}

variable "portal" {
  type        = string
  description = "Portal the API will be published on"
  default     = ""
}