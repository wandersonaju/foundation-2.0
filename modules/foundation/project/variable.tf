variable "billing_account" {
  description = "O ID da billing_account no Google Cloud"
  type        = string
  default     = null
}
variable "organization_id" {
  description = "The organization ID where folders and projects will be created"
  type        = string
  default     = null
}
variable "services_api" {
  description = "List of APIs to enable on the projects"
  type        = string
  default     = null
}
variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
  default     = null
}
variable "name" {
  description = "The name of the GCP project"
  type        = string
  default     = null
}

variable "folders" {
  description = "Map of folders: key = folder name, value = parent"
  type        = map(string)
  default     = {}
}

variable "projects" {
  description = "A list of projects to create"
  type = list(object({
    project_id = string
    folder     = string
    enable_api = list(string)
  }))
  default = []
}

variable "policies" {
  description = "List of organization policies to create"
  type = list(object({
    policy_name = string
    parent      = string
    enforce     = optional(string, "TRUE")
  }))
  default = []
}