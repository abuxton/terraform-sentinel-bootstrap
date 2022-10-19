policy "deny-public-rdp-nsg-rules" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/azure-networking-terraform/1.0.2/policy/deny-public-rdp-nsg-rules.sentinel?checksum=sha256:b07e2c47e2683c9b89a75f87dd9617806b257a0db7261881efe51ed5d5893357"
  enforcement_level = "advisory"
  #enforcement_level = "soft-mandatory"
  #enforcement_level = "hard-mandatory"
}

policy "deny-public-ssh-nsg-rules" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/azure-networking-terraform/1.0.2/policy/deny-public-ssh-nsg-rules.sentinel?checksum=sha256:75c95bf1d6eb48153cb31f15c49c237bf7829549beebe20effa07bcdd3f3cb74"
  enforcement_level = "advisory"
  #enforcement_level = "soft-mandatory"
  #enforcement_level = "hard-mandatory"
}
  
