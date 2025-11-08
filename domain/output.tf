output "dns_zone" {
  description = "Registros DNS do domínio principal"
  value       = module.dominio_principal.dns_zone
}

output "dns_zone_secundario" {
  description = "Registros DNS do domínio principal"
  value       = module.dominio_secundario.dns_zone
}