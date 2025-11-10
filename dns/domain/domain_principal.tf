module "main_domain" {
  source    = "../module"
  zone_name = "barraca-com-br"
  dns_name  = "barraca.com.br."
  dns_records = {

    "www"   = { name = "www.barraca.com.br.", records = ["203.0.113.10"], ttl = 300, type = "A" }
    "api"   = { name = "api.barraca.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }
    "caixa" = { name = "caixa.barraca.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }
    "bb"    = { name = "bb.barraca.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }

  }
}
