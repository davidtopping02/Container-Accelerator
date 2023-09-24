# https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html
variable "country_to_region" {
  description = "A map of countries to AWS regions"
  type        = map(string)
  default = {
    "Ohio"       = "us-east-2"
    "Virginia"   = "us-east-1"
    "California" = "us-west-1"
    "Oregon"     = "us-west-2"
    "Cape Town"  = "af-south-1"
    "Hong Kong"  = "ap-east-1"
    "Hyderabad"  = "ap-south-2"
    "Jakarta"    = "ap-southeast-3"
    "Melbourne"  = "ap-southeast-4"
    "Mumbai"     = "ap-south-1"
    "Osaka"      = "ap-northeast-3"
    "Seoul"      = "ap-northeast-2"
    "Singapore"  = "ap-southeast-1"
    "Sydney"     = "ap-southeast-2"
    "Tokyo"      = "ap-northeast-1"
    "Central"    = "ca-central-1"
    "Frankfurt"  = "eu-central-1"
    "Ireland"    = "eu-west-1"
    "London"     = "eu-west-2"
    "Milan"      = "eu-south-1"
    "Paris"      = "eu-west-3"
    "Spain"      = "eu-south-2"
    "Stockholm"  = "eu-north-1"
    "Zurich"     = "eu-central-2"
    "Tel Aviv"   = "il-central-1"
    "Bahrain"    = "me-south-1"
    "UAE"        = "me-central-1"
    "Sao Paulo"  = "sa-east-1"
  }
}

locals {
  region = contains(keys(var.country_to_region), var.region_name) ? var.country_to_region[var.region_name] : var.region_name
}
