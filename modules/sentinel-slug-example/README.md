# TFE Policy_set example

## usage

This module is provided as an example of creating a policy set using a local reference folder `slug` of policies and with the vcs connection annotated in the code base.

See ./tests folder for examples of usage; pay attention to the path structure, in a `slug` upload the `sentinel.hcl` file must reside at the route of the slug.

```
data "tfe_slug" "default" {
  source_path = "../../../../"
}
module "sentinel" {
  source        = "../.."
  org_name      = var.org_name
  tfe_slug_data = data.tfe_slug.default
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
| <a name="input_policies_path"></a> [policies\_path](#input\_policies\_path) | n/a | `string` | n/a | yes |
| <a name="input_tfe_slug_data"></a> [tfe\_slug\_data](#input\_tfe\_slug\_data) | (optional) tfe\_slug data object | `map(any)` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
