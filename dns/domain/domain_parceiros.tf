module "pastel" {
  source    = "../module"
  zone_name = "coxinha-pastel-com-br"
  dns_name  = "coxinha.pastel.com.br."
  dns_records = {

    "blog" = { name = "blog.coxinha.pastel.com.br.", records = ["203.0.113.10"], ttl = 300, type = "A" }
    "shop" = { name = "shop.coxinha.pastel.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }

  }
}

module "caldo-de-cana" {
  source    = "../module"
  zone_name = "caldo-pastel-com-br"
  dns_name  = "caldo.pastel.com.br."
  dns_records = {

    "blog" = { name = "blog.caldo.pastel.com.br.", records = ["203.0.113.12"], ttl = 300, type = "A" }
    "shop" = { name = "shop.caldo.pastel.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }

  }
}

module "camarao" {
  source    = "../module"
  zone_name = "camarao-pastel-com-br"
  dns_name  = "camarao.pastel.com.br."
  dns_records = {

    "blog" = { name = "blog.camarao.pastel.com.br.", records = ["203.0.113.10"], ttl = 300, type = "A" }
    "shop" = { name = "shop.camarao.pastel.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }
    "www"  = { name = "www.camarao.pastel.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }
  }
}