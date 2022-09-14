# https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/policy_set

resource "tfe_policy_set" "default" {
  name          = "global_example_vcs_policies"
  description   = "An example policy set pulled from VCS connection"
  organization  = var.org_name
  policies_path = var.policies_path
  global        = true
  #workspace_ids = var.organizations_workspace_ids
  vcs_repo {
    identifier         = "{var.vcs_user_name}/{var.vcs_project_name}"
    branch             = "main"
    ingress_submodules = false
    oauth_token_id     = var.tfe_oauth_client_id
  }
}

