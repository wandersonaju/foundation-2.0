module "folders" {
  source          = "../../modules/foundation/folder"
  organization_id = var.organization_id

  folders = [
    # Criando os folders principais primeiro
    { name = "shared", parent = "organizations/${var.organization_id}" },
    { name = "desenvolvimento", parent = "organizations/${var.organization_id}" }
  ]
}

module "subfolders" {
  source          = "../../modules/foundation/folder"
  organization_id = var.organization_id

  folders = [
    { name = "network", parent = module.folders.folder_ids["shared"] },
    { name = "security", parent = module.folders.folder_ids["shared"] }
  ]

  depends_on = [module.folders]
}