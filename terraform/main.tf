resource "cloudflare_workers_script" "node_app" {
  name       = var.worker_name
  account_id = var.account_id
  content    = file("../app/worker.js")
}
