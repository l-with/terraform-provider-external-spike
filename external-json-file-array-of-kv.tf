variable "external-json-file-array-of-kv" {
  description = "external json file array-of-kv"
  default     = "array-of-kv.json"
}

data "external" "external-json-file-array-of-kv" {
  program = ["./base64.sh", var.external-json-file-array-of-kv]
}

output "external-json-file-array-of-kv" {
  description = "the output for the external json file array-of-kv"
  value       = base64decode(data.external.external-json-file-array-of-kv.result.base64)
}