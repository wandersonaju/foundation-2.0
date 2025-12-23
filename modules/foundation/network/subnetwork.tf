locals {
  subnets = flatten([
    for vpc_key, vpc in var.vpcs : [
      for subnet_key, subnet in vpc.subnets : {
        vpc_id              = google_compute_network.vpc_network[vpc_key].id
        subnet_name         = subnet.subnet_name
        subnet_cidr         = subnet.subnet_cidr
        subnet_region       = subnet.subnet_region
        project_name        = vpc.project_name
        secondary_ip_ranges = subnet.secondary_ip_ranges
      }
    ]
  ])
}

resource "google_compute_subnetwork" "subnetwork" {
  for_each      = { for s in local.subnets : s.subnet_name => s }
  project       = each.value.project_name
  name          = each.value.subnet_name
  ip_cidr_range = each.value.subnet_cidr
  region        = each.value.subnet_region
  network       = each.value.vpc_id

  dynamic "secondary_ip_range" {
    for_each = each.value.secondary_ip_ranges
    content {
      range_name    = secondary_ip_range.value.range_name
      ip_cidr_range = secondary_ip_range.value.ip_cidr_range
    }
  }

  depends_on = [google_compute_network.vpc_network]
}