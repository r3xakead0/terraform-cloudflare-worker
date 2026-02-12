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
  description = "Worker name (used for both the script and the workers.dev subdomain)" 
  type        = string
  default     = "node-worker-demo"
}

variable "workers_dev_subdomain" {
  description = "Subdomain for workers.dev (e.g., 'my-worker' will create my-worker.workers.dev)"
  type        = string
  default     = "chainiz"
}
