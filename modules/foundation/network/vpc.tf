resource "google_compute_network" "vpc_network" {
  for_each                = var.vpcs
  project                 = each.value.project_name
  name                    = each.value.vpc_name
  auto_create_subnetworks = false
  routing_mode            = "GLOBAL"
}