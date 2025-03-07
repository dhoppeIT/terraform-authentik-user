variable "username" {
  type        = string
  description = "Name of the user"
}

variable "attributes" {
  type        = string
  default     = "{}"
  description = "Custom attributes definition for the user"
}

variable "email" {
  type        = string
  default     = null
  description = "The email address of the user"
}

variable "groups" {
  type        = list(string)
  default     = null
  description = "List of groups to apply to this user"
}

variable "is_active" {
  type        = bool
  default     = true
  description = "Define if the newly created user account is active"
}

variable "name" {
  type        = string
  default     = ""
  description = "The display name of the user"
}

variable "password" {
  type        = string
  sensitive   = true
  default     = null
  description = "The password of the user"
}

variable "path" {
  type        = string
  default     = "users"
  description = "The path where the user will be created"
}

variable "type" {
  type        = string
  default     = "internal"
  description = "The type the user will be created as"

  validation {
    condition     = contains(["internal", "external", "service_account", "internal_service_account"], var.type)
    error_message = "Valid values are internal, external, service_account, internal_service_account"
  }
}
