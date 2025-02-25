module "projects" {
  source          = "../../modules/foundation/project"
  organization_id = var.organization_id
  billing_account = var.billing_account
  projects = [
    { name = "wfs-network-dev", folder = 1098604734150 },
    { name = "wfs-lab-dev", folder = 984690173317 }
  ]
  depends_on = [module.subfolders]
}