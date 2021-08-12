# https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/policy_set

resource "tfe_policy_set" "example" {
  name          = "example_policy"
  description   = "An example policy set"
  organization  = var.org_name
  #policies_path = "policies/my-policy-set"
  workspace_ids = [var.tfe_workspace]

  vcs_repo {
    identifier         = "{var.user_name}/{var.vcs-project-name}"
    branch             = "main"
    ingress_submodules = false
    oauth_token_id     = var.tfe_oauth_client.test.id
  }
}
