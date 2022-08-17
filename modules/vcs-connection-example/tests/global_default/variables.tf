variable "org_name" {
  type = string
}

variable "organizations_workspace_ids" {
  type    = list(string)
  default = []
}

variable "vcs_user_name" {
  type = string
}
variable "vcs_project_name" {
  type = string
}
variable "tfe_oauth_client_id" {
  type = string
}
variable "policies_path" {
  type     = string
  default  = null
  nullable = true
}
