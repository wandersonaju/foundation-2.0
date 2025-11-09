module "dominio_secundario" {
  source    = "../module"
  zone_name = "pastel-com-br"
  dns_name  = "pastel.com.br."
  dns_records = {

    "blog" = { name = "blog.pastel.com.br.", records = ["203.0.113.10"], ttl = 300, type = "A" }
    "shop" = { name = "shop.pastel.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }

  }
}

module "caldo-de-cana" {
  source    = "../module"
  zone_name = "caldodecana-com-br"
  dns_name  = "caldodecana.com.br."
  dns_records = {

    "blog" = { name = "blog.caldodecana.com.br.", records = ["203.0.113.12"], ttl = 300, type = "A" }
    "shop" = { name = "shop.caldodecana.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }

  }
}