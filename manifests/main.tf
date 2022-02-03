# https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/policy_set
#add a comment

resource "tfe_policy_set" "example" {
  name         = "example_policy"
  description  = "An example policy set"
  global       = var.global ? true : false
  organization = var.org_name
  #policies_path = "policies/my-policy-set"
  workspace_ids = var.global ? [] : var.organizations_workspace_ids

  #   vcs_repo {
  #     identifier         = "{var.vcs_user_name}/{var.vcs_project_name}"
  #     branch             = "main"
  #     ingress_submodules = false
  #     oauth_token_id     = var.tfe_oauth_client.test.id
  #   }
}
