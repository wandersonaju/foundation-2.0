module "dominio_principal" {
  source    = "../module"
  zone_name = "pastel-com-br"
  dns_name  = "pastel.com.br."
  dns_records = {

    "www"   = { name = "www.pastel.com.br.", records = ["203.0.113.10"], ttl = 300, type = "A" }
    "api"   = { name = "api.pastel.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }
    "caixa" = { name = "caixa.pastel.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }
    "bb"    = { name = "bb.pastel.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }

  }
}