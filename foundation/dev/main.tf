module "folders" {
  source          = "../../modules/foundation/project"
  organization_id = var.organization_id
  folders         = var.folders
}

module "projects" {
  source          = "../../modules/foundation/project"
  organization_id = var.organization_id
  billing_account = var.billing_account
  projects        = var.projects
}

module "network" {
  source                  = "../../modules/foundation/network"
  vpcs                    = var.vpcs
  host_project            = var.host_project
  service_project         = var.service_project
  reserved_global_address = var.reserved_global_address
  private_services_access = var.private_services_access
  firewalls               = var.firewalls
  cloud_nat               = var.cloud_nat
}

module "organization_policies" {
  source   = "../../modules/foundation/project"
  policies = var.policies
}