output "worker_name" {
  value = cloudflare_workers_script.node_app.name
}

output "worker_id" {
  value = cloudflare_workers_script.node_app.id
}

output "worker_url" {
  value = "https://${var.worker_name}.${var.workers_dev_subdomain}.workers.dev"
}
