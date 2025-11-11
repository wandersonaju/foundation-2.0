main_zone = {
  "barraca" = {
    zone_name = "barraca-com-br"
    dns_name  = "barraca.com.br."
    dns_records = {
      "www"   = { name = "www.barraca.com.br.", records = ["203.0.113.10"], ttl = 300, type = "A" }
      "api"   = { name = "api.barraca.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }
      "caixa" = { name = "caixa.barraca.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }
      "bb"    = { name = "bb.barraca.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }
    }
  }
}

partner_subzones = {
  "pastel" = {
    zone_name = "pastel-barraca-com-br"
    dns_name  = "pastel.barraca.com.br."
    dns_records = {
      "api" = { name = "api.pastel.barraca.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }
      "net" = { name = "net.pastel.barraca.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }
    }
  },
  "caldo" = {
    zone_name = "caldo-barraca-com-br"
    dns_name  = "caldo.barraca.com.br."
    dns_records = {
      "caldo" = { name = "caldo.barraca.com.br.", records = ["203.0.113.10"], ttl = 300, type = "A" }
      "api"   = { name = "api.caldo.barraca.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }
    }
  },
  "camarao" = {
    zone_name = "camarao-barraca-com-br"
    dns_name  = "camarao.barraca.com.br."
    dns_records = {
      "www" = { name = "www.camarao.barraca.com.br.", records = ["203.0.113.10"], ttl = 300, type = "A" }
      "api" = { name = "api.camarao.barraca.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }
    }
  },
  "coxinha" = {
    zone_name = "coxinha-barraca-com-br"
    dns_name  = "coxinha.barraca.com.br."
    dns_records = {
      "coxinha" = { name = "coxinha.barraca.com.br.", records = ["203.0.113.10"], ttl = 300, type = "A" }
      "blog"    = { name = "blog.coxinha.barraca.com.br.", records = ["203.0.113.10"], ttl = 300, type = "A" }
      "txt_test" = { name = "coxinha.barraca.com.br.", records = [
        "\"random-verification=4f1c9e8d3a2b\"",
        "\"google-site-verification=7e9f8c1d2b34\"",
        "\"env=test-lab\"",
        "\"owner=infra-team\""
        ],
        ttl = 300, type = "TXT"
      }
    }
  },
  "agua" = {
    zone_name = "agua-barraca-com-br"
    dns_name  = "agua.barraca.com.br."
    dns_records = {
      "www" = { name = "www.agua.barraca.com.br.", records = ["203.0.113.10"], ttl = 300, type = "A" }
      "api" = { name = "api.agua.barraca.com.br.", records = ["203.0.113.11"], ttl = 300, type = "A" }
    }

  }

}


