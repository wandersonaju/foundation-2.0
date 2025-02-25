resource "google_project" "projects" {
  for_each       = { for project in var.projects : project.name => project }
  name          = each.value.name
  project_id    = lower(replace(each.value.name, "_", "-"))
  billing_account = var.billing_account
  folder_id     = each.value.folder
}