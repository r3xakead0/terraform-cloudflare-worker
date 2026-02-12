output "worker_name" {
  value = cloudflare_workers_script.node_app.script_name
}

output "worker_url" {
  value = "https://${var.worker_name}.${var.workers_dev_subdomain}.workers.dev"
}
