output "zone_name" {
  description = "Name of the DNS managed zone created"
  value       = google_dns_managed_zone.prod.name
}

output "dns_zone" {
  description = "List of the name servers associated with the DNS managed zone"
  value       = google_dns_managed_zone.prod.name_servers
}

