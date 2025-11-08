# Top-level folder under an organization.
resource "google_folder" "folders" {
  for_each            = { for folder in var.folders : folder.name => folder }
  display_name        = each.value.name
  parent              = each.value.parent
  deletion_protection = false
}