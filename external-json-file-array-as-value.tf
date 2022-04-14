variable "external-json-file-array-as-value" {
  description = "external json file array-as-value"
  default     = "array-as-value.json"
}

data "external" "external-json-file-array-as-value" {
  program = ["./base64.sh", var.external-json-file-array-as-value]
}

output "external-json-file-array-as-value" {
  description = "the output for the external json file array-as-value"
  value       = base64decode(data.external.external-json-file-array-as-value.result.base64)
}
