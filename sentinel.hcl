policy "example-policy" {
  source = "./example-policy.sentinel"
  enforcement_level = "advisory"
  # enforcement_level = "hard-mandatory"
  # enforcement_level = "soft-mandatory"
}
policy "default" {
  source = "./default.sentinel"
  enforcement_level = "hard-mandatory"
  # enforcement_level = "hard-mandatory"
  # enforcement_level = "soft-mandatory"
}
