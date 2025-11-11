module "main_domain" {
  source      = "../module"
  for_each    = var.main_zone
  zone_name   = each.value.zone_name
  dns_name    = each.value.dns_name
  dns_records = each.value.dns_records
}