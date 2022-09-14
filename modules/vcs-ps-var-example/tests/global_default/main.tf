
module "sentinel" {
  source              = "../.."
  policy_set_name     = "policy_set_var_test"
  org_name            = var.org_name
  tfe_oauth_client_id = var.tfe_oauth_client_id
  vcs_project_name    = var.vcs_project_name
  vcs_user_name       = var.vcs_user_name
  policies_path       = var.policies_path
}

resource "tfe_policy_set_parameter" "test" {
  key           = "test"
  value         = "\"a\",\"list\",\"example\""
  policy_set_id = module.sentinel.policy_set_id

}
