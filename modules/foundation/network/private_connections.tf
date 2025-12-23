resource "google_compute_global_address" "private_ip_alloc" {
  for_each      = var.reserved_global_address
  name          = each.value.name
  purpose       = each.value.purpose
  address_type  = each.value.address_type
  address       = each.value.address
  prefix_length = each.value.prefix_length
  network       = each.value.vpc_name
}

resource "google_service_networking_connection" "foobar" {
  count                   = var.private_services_access != null ? 1 : 0
  network                 = var.private_services_access.vpc_name
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [var.private_services_access.address_name]

  depends_on = [google_compute_global_address.private_ip_alloc]
}

resource "google_compute_network_peering_routes_config" "peering_routes" {
  peering = google_service_networking_connection.foobar[0].peering
  network = var.private_services_access.vpc_name

  import_custom_routes = true
  export_custom_routes = true
}