data "tfe_slug" "default" {
  source_path = "../../../../"
}
module "sentinel" {
  source        = "../.."
  org_name      = var.org_name
  tfe_slug_data = data.tfe_slug.default
  policies_path = "./config/default/"
}
