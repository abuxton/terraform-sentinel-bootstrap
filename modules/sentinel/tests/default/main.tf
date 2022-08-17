module "sentinel" {
  source        = "../.."
  org_name      = var.org_name
  tfe_workspace = var.tfe_workspace
  global        = true
}
