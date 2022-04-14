variable "external-json-file-kv" {
  description = "external json file kv"
  default     = "kv.json"
}

data "external" "external-json-file-kv" {
  program = ["./kv.sh", var.external-json-file-kv]
}

output "external-json-file-kv" {
  description = "the output for the external json file kv"
  value       = data.external.external-json-file-kv.result
}
