variable "organization_id" {}

variable "folders" {
  type      = list(object({
    name    = string
    parent  = string
  }))
}

