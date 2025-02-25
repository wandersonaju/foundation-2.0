module "folders" {
  source          = "../../modules/project"
  organization_id = var.organization_id

  folders = [
    # Criando os folders principais primeiro
    { name = "Foundation", parent = "organizations/${var.organization_id}" },
    { name = "Desenvolvimento", parent = "organizations/${var.organization_id}" }
  ]
}

module "subfolders" {
  source          = "../../modules/project"
  organization_id = var.organization_id

  folders = [
    { name = "Network", parent = module.folders.folder_ids["Foundation"] },
    { name = "Security", parent = module.folders.folder_ids["Foundation"] }
  ]

  #depends_on = [module.folders]
}


