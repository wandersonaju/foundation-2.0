module "dominio_principal" {
  source    = "../module"
  zone_name = "portal-com-br"
  dns_name  = "portal.com.br."
  dns_records = {

    "www" = { name = "www.portal.com.br.", records = ["203.0.113.10"], ttl = 300, type = "A" }
    "api" = { name = "api.portal.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }
    "caixa" = { name = "caixa.portal.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }

  }
}



