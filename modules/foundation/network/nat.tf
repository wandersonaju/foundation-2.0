resource "google_compute_router" "shared_router" {
  for_each = var.cloud_nat
  name    = each.value.name
  region  = each.value.region   
  network = each.value.network
}

resource "google_compute_router_nat" "shared_nat_router" {
  for_each = var.cloud_nat
  name     = each.value.name
  region   = each.value.region
  router   = google_compute_router.shared_router[each.key].name

  nat_ip_allocate_option = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}