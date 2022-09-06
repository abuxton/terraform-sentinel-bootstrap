policy "deny-default-network-in-project" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/gcp-networking-terraform/1.0.2/policy/deny-default-network-in-project.sentinel?checksum=sha256:06423049813d571a476cc7c183d7b58969cdde669bccbc4f33298e1a93d0dfd5"
    enforcement_level = "advisory"
  #enforcement_level = "hard-mandatory"
  #enforcement_level = "soft-mandatory"
}
  
