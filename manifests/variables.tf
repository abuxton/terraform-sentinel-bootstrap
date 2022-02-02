variable "org_name" {
  type = string
}
variable "tfe_workspace" {
  type = string
}

variable "organizations_workspace_ids" {
  type = list(string)
}

variable "global" {
type = bool
default = false
}
