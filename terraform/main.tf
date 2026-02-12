resource "cloudflare_workers_script" "node_app" {
  name       = var.worker_name
  account_id = var.account_id
  content    = file("../app/worker.js")
}

resource "cloudflare_workers_domain" "workers_dev" {
  account_id = var.account_id
  service    = cloudflare_workers_script.node_app.name
  domain     = "${var.worker_name}.${var.workers_dev_subdomain}.workers.dev"
}