
module "sentinel" {
  source              = "../.."
  org_name            = var.org_name
  tfe_oauth_client_id = var.tfe_oauth_client_id
  vcs_project_name    = var.vcs_project_name
  vcs_user_name       = var.vcs_user_name
  policies_path       = var.polices_path
}
