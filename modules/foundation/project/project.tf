resource "google_project" "projects" {
  #for_each        = { for project in var.projects : project.name => project }
  name            = var.name
  project_id      = var.project_id
  billing_account = var.billing_account
  folder_id       = var.folder
}

resource "google_project_service" "project" {
  project  = var.project_id
  service  = var.services_api
}