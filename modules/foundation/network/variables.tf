variable "vpcs" {
  description = "A map of VPCs to create"
  type = map(object({
    project_name = string
    vpc_name     = string
    subnets = map(object({
      subnet_name   = string
      subnet_cidr   = string
      subnet_region = string
      secondary_ip_ranges = optional(list(object({
        range_name    = string
        ip_cidr_range = string
      })), [])
    }))
  }))
  default = {}
}

variable "host_project" {
  description = "The host project for Shared VPC"
  type        = string
  default     = null
}

variable "service_project" {
  description = "The service project for Shared VPC"
  type        = list(string)
  default     = []
}

variable "reserved_global_address" {
  description = "A map of reserved global addresses to create"
  type = map(object({
    vpc_name      = string
    name          = string
    address       = optional(string)
    purpose       = string
    address_type  = string
    prefix_length = number
  }))
  default = {}
}

variable "private_services_access" {
  description = "Configuration for Private Services Access"
  type = object({
    vpc_name     = string
    address_name = string
  })
  default = null
}

variable "firewalls" {
  description = "A map of firewall rules to create"
  type = map(object({
    name         = string
    network      = string
    source_ranges = list(string)
    target_tags  = list(string)
    allowed      = list(object({
      protocol = string
      ports    = list(string)
    }))
  }))
  default = {}
}

variable "cloud_nat" {
  description = "Configuration for Cloud NAT"
  type = map(object({
    name               = string
    region             = string
    network            = string
  }))         
  default = {}
}