variable "external-json-file-nested" {
  description = "external json file nested"
  default     = "nested.json"
}

data "external" "external-json-file-nested" {
  program = ["./base64.sh", var.external-json-file-nested]
}

output "external-json-file-nested" {
  description = "the output for the external json file nested"
  value       = base64decode(data.external.external-json-file-nested.result.base64)
}