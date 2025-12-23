resource "google_compute_firewall" "default" {
  for_each = var.firewalls
  name    = each.value.name
  network = each.value.network

  source_ranges = each.value.source_ranges
  target_tags   = each.value.target_tags


  priority  = 1000

  dynamic "allow" {
    for_each = each.value.allowed
    content {
      protocol = allow.value.protocol
      ports    = allow.value.ports
    }
  }
}

