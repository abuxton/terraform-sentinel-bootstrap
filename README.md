# Sentinel Bootstrap repository

This repository is a stripped down repository for bootstrapping Sentinel for Terraform Enterprise (TFE), it includes an example policy and tests with suggested structure.

The structure also includes;

- `.gitignore`, to stop temporary files such as `.sentinel/` being committed to source control.
- `main.tf`, Example usage of TFE provided to configure sentinel repositories.
- Initial `sentinel.hcl` configuration file
- `example-policy.sentinel`, example policy with `test/example-policy` included for a working example.

## Useful links

- https://www.terraform.io/docs/cloud/sentinel/index.html
- https://www.terraform.io/docs/cloud/sentinel/sentinel-tf-012.html
- https://www.terraform.io/docs/cloud/sentinel/import/index.html


### Development and testing

- https://docs.hashicorp.com/sentinel/changelog
- https://www.terraform.io/docs/cloud/sentinel/mock.html
- https://docs.hashicorp.com/sentinel/commands/test
- https://medium.com/hashicorp-engineering/automating-sentinel-cli-policy-tests-with-gitlab-ci-cd-51b7d2b45e3e
  - https://gitlab.com/kawsark/sentinel-policy-sets-for-tfc
- `github/workflows/sentinel.workflow`

### example code 

- https://github.com/hashicorp/terraform-guides
- https://www.terraform.io/docs/cloud/sentinel/examples.html
