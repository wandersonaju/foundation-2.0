module "pastel" {
  source      = "../module"
  zone_name   = "pastel-barraca-com-br"
  dns_name    = "pastel.barraca.com.br."
  main_domain = module.main_domain.zone_name
  dns_records = {

    "blog" = { name = "pastel.barraca.com.br.", records = ["203.0.113.10"], ttl = 300, type = "A" }
    "shop" = { name = "www.pastel.barraca.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }

  }
  depends_on = [ module.main_domain ]
}

module "caldo-de-cana" {
  source    = "../module"
  zone_name = "caldo-barraca-com-br"
  dns_name  = "caldo.barraca.com.br."
  main_domain = module.main_domain.zone_name
  dns_records = {

    "blog" = { name = "caldo.barraca.com.br.", records = ["203.0.113.12"], ttl = 300, type = "A" }
    "shop" = { name = "shop.caldo.barraca.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }

  }
  depends_on = [ module.main_domain ]
}

module "camarao" {
  source    = "../module"
  zone_name = "camarao-barraca-com-br"
  dns_name  = "camarao.barraca.com.br."
  main_domain = module.main_domain.zone_name
  dns_records = {

    "blog" = { name = "blog.camarao.barraca.com.br.", records = ["203.0.113.10"], ttl = 300, type = "A" }
    "shop" = { name = "shop.camarao.barraca.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }
    "www"  = { name = "www.camarao.barraca.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }
  }
  depends_on = [ module.main_domain ]
}

module "cocacola" {
  source    = "../module"
  zone_name = "cocacola-barraca-com-br"
  dns_name  = "cocacola.barraca.com.br."
  main_domain = module.main_domain.zone_name
  dns_records = {

    "blog" = { name = "blog.cocacola.barraca.com.br.", records = ["203.0.113.10"], ttl = 300, type = "A" }
    "shop" = { name = "shop.cocacola.barraca.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }
    "www"  = { name = "www.cocacola.barraca.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }
  }
  depends_on = [ module.main_domain ]
}
