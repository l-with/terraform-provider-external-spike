variable "external-json-file-array" {
  description = "external json file array"
  default     = "array.json"
}

data "external" "external-json-file-array" {
  program = ["./base64.sh", var.external-json-file-array]
}

output "external-json-file-array" {
  description = "the output for the external json file array"
  value       = base64decode(data.external.external-json-file-array.result.base64)
}