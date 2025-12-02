variable "billing_account" {}
variable "organization_id" {}
variable "services_api" {}
variable "project_id" {}
variable "name" {}
variable "folder" {}
# variable "projects" {
#   type      = list(object({
#     name    = string
#     folder  = string
#   }))
# }

variable "folders" {
  type      = list(object({
    name    = string
    parent  = string
  }))
}