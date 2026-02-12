resource "cloudflare_workers_script" "node_app" {
  name       = var.worker_name
  account_id = var.account_id
  content    = file("../app/worker.js")
}

resource "cloudflare_workers_script_subdomain" "workers_dev" {
  account_id = var.account_id
  script_name = cloudflare_workers_script.node_app.name
  enabled = true
}