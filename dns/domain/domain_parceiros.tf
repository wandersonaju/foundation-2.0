module "partner_subdomains" {
  source      = "../module"
  for_each    = var.partner_subzones
  zone_name   = each.value.zone_name
  dns_name    = each.value.dns_name
  main_domain = var.main_domain
  dns_records = each.value.dns_records

  depends_on = [module.main_domain]
}