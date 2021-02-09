terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = ""

    workspaces {
      name = "tfe-example-policy"
    }
  }
}

variable "tfe_token" {}

variable "tfe_hostname" {
  description = "The domain where your TFE is hosted."
  default     = "app.terraform.io"
}

variable "tfe_organization" {
  description = "The TFE organization to apply your changes to."
  default     = "example_corp"
}

provider "tfe" {
  hostname = "${var.tfe_hostname}"
  token    = "${var.tfe_token}"
  version  = "~> 0.6"
}

data "tfe_workspace_ids" "all" {
  names        = ["*"]
  organization = "${var.tfe_organization}"
}

locals {
  workspaces = "${data.tfe_workspace_ids.all.external_ids}" # map of names to IDs
}

resource "tfe_policy_set" "global" {
  name         = "global"
  description  = "Policies that should be enforced on ALL infrastructure."
  organization = "${var.tfe_organization}"
  global       = true

  policy_ids = [
    "${tfe_sentinel_policy.example-policy.id}",
  ]
}

// resource "tfe_policy_set" "production" {
//   name         = "production"
//   description  = "Policies that should be enforced on production infrastructure."
//   organization = "${var.tfe_organization}"

//   policy_ids = [
// .    "${tfe_sentinel_policy.example-policy.id}",
//   ]

//   workspace_external_ids = [
//     "${local.workspaces["app-prod"]}",
//   ]
// }

resource "tfe_policy_set" "development" {
  name         = "development"
  description  = "Policies that should be enforced on development or scratch infrastructure."
  organization = "${var.tfe_organization}"

  policy_ids = [
    "${tfe_sentinel_policy.example-policy.id}",
  ]

  workspace_external_ids = [
    "${local.workspaces["app-dev"]}",
    "${local.workspaces["app-dev-sandbox"]}",
  ]
}

resource "tfe_policy_set" "sentinel" {
  name         = "sentinel"
  description  = "Policies that watch the watchman. Enforced only on the workspace that manages policies."
  organization = "${var.tfe_organization}"

  policy_ids = [
    "${tfe_sentinel_policy.tfe_policies_only.id}",
  ]

  workspace_external_ids = [
    "${local.workspaces["tfe-policies"]}",
  ]
}

// # Test/experimental policies:

// resource "tfe_sentinel_policy" "passthrough" {
//   name         = "passthrough"
//   description  = "Just passing through! Always returns 'true'."
//   organization = "${var.tfe_organization}"
//   policy       = "${file("./passthrough.sentinel")}"
//   enforce_mode = "advisory"
// }

// # Sentinel management policies:

// resource "tfe_sentinel_policy" "tfe_policies_only" {
//   name         = "tfe_policies_only"
//   description  = "The Terraform config that manages Sentinel policies must not use the authenticated tfe provider to manage non-Sentinel resources."
//   organization = "${var.tfe_organization}"
//   policy       = "${file("./tfe_policies_only.sentinel")}"
//   enforce_mode = "hard-mandatory"
// }

# example policy
resource "tfe_sentinel_policy" "example-policy" {
  name         = "example-policy"
  description  = "The Terraform config that manage the example-policy."
  organization = "${var.tfe_organization}"
  policy       = "${file("./example-policy.sentinel")}"
  enforce_mode = "soft-mandatory"
}
