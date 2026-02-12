output "worker_name" {
  value = cloudflare_workers_script.node_app.name
}

output "worker_id" {
  value = cloudflare_workers_script.node_app.id
}

output "worker_url" {
  value = "https://${var.worker_name}.${data.cloudflare_account.this.workers_subdomain}.workers.dev"
}
