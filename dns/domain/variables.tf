variable "main_domain" {
  description = "The main domain to which this subdomain belongs."
  type        = string
  default     = "barraca-com-br"
}

variable "main_zone" {
  description = "A list containing main DNS record set attributes."
  type = map(object({
    zone_name = string
    dns_name  = string
    dns_records = map(object({
      name    = string
      type    = string
      ttl     = number
      records = list(string)
    }))
  }))

}

variable "partner_subzones" {
  description = "A list containing partner DNS record set attributes."
  type = map(object({
    zone_name = string
    dns_name  = string
    dns_records = map(object({
      name    = string
      type    = string
      ttl     = number
      records = list(string)
    }))
  }))

}