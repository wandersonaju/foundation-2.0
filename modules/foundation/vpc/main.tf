resource "google_compute_network" "vpc_network" {
  project                  = var.project_name
  name                     = var.vpc_name
  auto_create_subnetworks  = false
  routing_mode             = "GLOBAL"
}

resource "google_compute_subnetwork" "subnetwork" {
  project       = var.project_name
  name          = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  region        = var.subnet_region
  network       = var.network_id
    
}

