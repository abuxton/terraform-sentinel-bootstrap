terraform {

  cloud {
    organization = "abc-vdm"

    workspaces {
      name = "sentinel-ps-with-vs-test"
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
