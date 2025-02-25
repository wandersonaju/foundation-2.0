module "projects_dev" {
  source          = "../../modules/foundation/project"
  organization_id = var.organization_id
  billing_account = var.billing_account
  name            = "wfslab-network-dev"
  project_id      = "wfslab-network-dev"
  folder          = 1098604734150
  services_api    = "compute.googleapis.com"
}

module "projects_dev" {
  source          = "../../modules/foundation/project"
  organization_id = var.organization_id
  billing_account = var.billing_account
  name            = "wfslab-dev"
  project_id      = "wfslab-dev"
  folder          = 984690173317
  services_api    = "compute.googleapis.com"
}