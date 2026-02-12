variable "cloudflare_api_token" {
  description = "Cloudflare API Token"
  type        = string
  sensitive   = true
}

variable "account_id" {
  description = "Cloudflare Account ID"
  type        = string
}

variable "worker_name" {
  description = "Worker name"
  type        = string
  default     = "node-worker-demo"
}
