resource "cloudflare_workers_script" "node_app" {
  script_name    = var.worker_name
  account_id     = var.account_id
  content_file   = "../app/worker.js"
  content_sha256 = filesha256("../app/worker.js")
}

resource "cloudflare_workers_script_subdomain" "workers_dev" {
  account_id  = var.account_id
  script_name = cloudflare_workers_script.node_app.script_name
  enabled     = true
}