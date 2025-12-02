module "projects_network" {
  source          = "../../modules/foundation/project"
  organization_id = var.organization_id
  billing_account = var.billing_account
  name            = "lablos-network-dev"
  project_id      = "lablos-network-dev"
  folder          = module.subfolders.folder_ids["network"]
  services_api    = "compute.googleapis.com"
}

module "projects_dev" {
  source          = "../../modules/foundation/project"
  organization_id = var.organization_id
  billing_account = var.billing_account
  name            = "lablos-dev"
  project_id      = "lablos-dev"
  folder          = module.folders.folder_ids["desenvolvimento"]
  services_api    = "compute.googleapis.com"
}