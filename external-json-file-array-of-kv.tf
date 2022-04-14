variable "external-json-file-array-of-kv" {
  description = "external json file array-of-kv"
  default     = "array-of-kv.json"
}

data "external" "external-json-file-array-of-kv" {
  program = ["./base64.sh", var.external-json-file-array-of-kv]
}

output "external-json-file-array-of-kv" {
  description = "the output for the external json file array-of-kv"
  value       = jsondecode(base64decode(data.external.external-json-file-array-of-kv.result.base64))
}

locals {
  result = jsondecode(base64decode(data.external.external-json-file-array-of-kv.result.base64))
  line2value2 = local.result[1]["key2_2"]
}

output "external-json-file-array-of-kv_value2_2" {
  description = "the output for the external json file array-of-kv"
  value       = local.line2value2
}
