terraform {
  backend "gcs" {
    bucket = "losandes-terraform-state"
    prefix = "prod"
  }
}