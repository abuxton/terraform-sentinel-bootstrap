curl \
--header "Authorization: Bearer ${TFE_TOKEN}" \
--header "Content-Type: application/vnd.api+json" \
https://app.terraform.io/api/v2/policy-sets/${TFE_POLSET}/parameters
