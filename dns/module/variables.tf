variable "zone_name" {
  description = "The name of the managed DNS zone within Google Cloud DNS."
  type        = string
}

variable "dns_name" {
  description = "The DNS domain name associated with the managed zone (must end with a dot)."
  type        = string
}

variable "dns_records" {
  description = "A list containing DNS record set attributes."
  type = map(object({
    name    = string
    type    = string
    ttl     = number
    records = list(string)
  }))

}

