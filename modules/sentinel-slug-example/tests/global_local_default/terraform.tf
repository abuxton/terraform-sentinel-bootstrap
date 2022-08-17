terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "abc-vdm"

    workspaces {
      name = "terraform-sentinel-bootstrap"
    }
  }
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
      #  version = "0.25.3"
    }
  }
}

# provider "tfe" {
#   # Configuration options
# }
