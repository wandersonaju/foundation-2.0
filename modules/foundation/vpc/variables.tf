variable "project_name" {
  description = "The ID of the project where the VPC will be created"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC network"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnetwork"
  type        = string
}

variable "subnet_cidr" {
  description = "The primary CIDR block for the subnetwork"
  type        = string
}

variable "subnet_region" {
  description = "The region where the subnetwork will be created"
  type        = string
}

variable "network_id" {
  description = "The ID of the VPC network to attach this subnetwork to"
  type        = string
}
