variable "org_name" {
  type = string
}

variable "organizations_workspace_ids" {
  type    = list(string)
  default = null
}

variable "global" {
  type    = bool
  default = false
}
