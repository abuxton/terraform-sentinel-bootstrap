
policy "default" {
  source = "../../example-policy.sentinel"
  #enforcement_level = "advisory"
  #enforcement_level = "hard-mandatory"
  enforcement_level = "soft-mandatory"
}
