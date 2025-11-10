data "google_dns_managed_zone" "parent" {
  name = "pastel-com-br"

depends_on = [google_dns_managed_zone.prod]
}

resource "google_dns_record_set" "a" {
  for_each     = var.dns_records
  name         = each.value.name
  managed_zone = google_dns_managed_zone.prod.name
  type         = each.value.type
  ttl          = each.value.ttl
  rrdatas      = each.value.records
}

resource "google_dns_managed_zone" "prod" {
  name     = var.zone_name
  dns_name = var.dns_name
}

resource "google_dns_record_set" "delegate_in_parent" { 
  managed_zone = data.google_dns_managed_zone.parent.name
  name         = google_dns_managed_zone.prod.dns_name
  type         = "NS"
  ttl          = 300
  rrdatas      = google_dns_managed_zone.prod.name_servers
}