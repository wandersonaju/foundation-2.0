provider "google" {
  project               = var.project_id
  region                = var.region
  user_project_override = true           #Necessário para aplicar org policies
  billing_project       = var.project_id #Necessário para aplicar org policies
}