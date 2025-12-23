locals {
  services_list = flatten([
    for project in var.projects : [
      for api in project.enable_api : {
        project_id = project.project_id
        service    = api
      }
    ]
  ])

  services_map = {
    for s in local.services_list :
    "${s.project_id}:${s.service}" => s
  }
}

resource "google_project" "projects" {
  for_each        = { for project in var.projects : project.project_id => project }
  name            = each.value.project_id
  project_id      = each.value.project_id
  billing_account = var.billing_account
  folder_id       = each.value.folder
  deletion_policy = "DELETE"
}

resource "google_project_service" "project" {
  for_each = local.services_map
  project  = each.value.project_id
  service  = each.value.service

  depends_on = [google_project.projects]
}
