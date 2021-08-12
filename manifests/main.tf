# https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/policy_set

resource "tfe_policy_set" "example" {
  name          = "var.policy_name"
  description   = "An example policy set"
  organization  = var.org_name
  #policies_path = "policies/my-policy-set"
  workspace_ids = [var.tfe_workspace.test.id]

  vcs_repo {
    identifier         = "{var.org_name}/{var.vcs-project-name}"
    branch             = "master"
    ingress_submodules = false
    oauth_token_id     = var.tfe_oauth_client.test.id
  }
}
