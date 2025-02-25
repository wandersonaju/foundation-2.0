module "projects" {
  source          = "../../modules/foundation/project"
  organization_id = var.organization_id
  billing_account = var.billing_account
  projects = [
    { name = "wfs-network-dev", folder = "Network" },
    { name = "wfs-lab-dev", folder = "Desenvolvimento" }
  ]
  depends_on = [module.subfolders]
}