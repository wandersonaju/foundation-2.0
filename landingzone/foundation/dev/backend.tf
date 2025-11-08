terraform {
  backend "gcs" {
    bucket = "terraform-state-cicd-project"
    prefix = "prod"
  }
}