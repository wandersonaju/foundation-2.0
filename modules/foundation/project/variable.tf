variable "billing_account" {}
variable "organization_id" {}
variable "projects" {
  type      = list(object({
    name    = string
    folder  = string
  }))
}