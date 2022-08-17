# https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/policy_set

resource "tfe_policy_set" "example" {
  name          = "example_policy"
  description   = "An example policy set"
  global        = var.global ? true : false
  organization  = var.org_name
  policies_path = "./config/default"
  workspace_ids = var.global ? [] : var.organizations_workspace_ids
  slug          = var.tfe_slug_data
  #   vcs_repo {
  #     identifier         = "{var.vcs_user_name}/{var.vcs_project_name}"
  #     branch             = "main"
  #     ingress_submodules = false
  #     oauth_token_id     = var.tfe_oauth_client.test.id
  #   }
}
