variable "org_name" {
  type = string
}

variable "policies_path" {
  type = string
}
variable "organizations_workspace_ids" {
  type    = list(string)
  default = []
}

variable "tfe_slug_data" {
  type        = map(any)
  default     = null
  description = "(optional) tfe_slug data object"
  nullable    = true

}
