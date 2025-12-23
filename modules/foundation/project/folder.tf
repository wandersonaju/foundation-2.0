resource "google_folder" "folders" {
  for_each            = var.folders
  display_name        = each.key
  parent              = each.value
  deletion_protection = false
}
