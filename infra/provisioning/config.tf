#SCALEWAY_ORGANIZATION
#SCALEWAY_TOKEN
provider "scaleway" {
  version = "~> 1.7.0"
  region  = "par1"
}

terraform {
  required_version = "0.11.8"
}
