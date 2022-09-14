# TFE Policy_set example

## usage

This module is provided as an example of creating a policy set using a `VCS` provider connection.

See ./tests folder for examples of usage;

```

module "sentinel" {
  source              = "../.."
  org_name            = var.org_name
  tfe_oauth_client_id = var.tfe_oauth_client_id
  vcs_project_name    = var.vcs_project_name
  vcs_user_name       = var.vcs_user_name
  policies_path       = var.polices_path
}
```


<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.36.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_policy_set.default](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/policy_set) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_org_name"></a> [org\_name](#input\_org\_name) | n/a | `string` | n/a | yes |
| <a name="input_organizations_workspace_ids"></a> [organizations\_workspace\_ids](#input\_organizations\_workspace\_ids) | n/a | `list(string)` | `[]` | no |
| <a name="input_policies_path"></a> [policies\_path](#input\_policies\_path) | n/a | `string` | `null` | no |
| <a name="input_tfe_oauth_client_id"></a> [tfe\_oauth\_client\_id](#input\_tfe\_oauth\_client\_id) | n/a | `string` | n/a | yes |
| <a name="input_vcs_project_name"></a> [vcs\_project\_name](#input\_vcs\_project\_name) | n/a | `string` | n/a | yes |
| <a name="input_vcs_user_name"></a> [vcs\_user\_name](#input\_vcs\_user\_name) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
