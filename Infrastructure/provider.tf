terraform {
  cloud {
    organization = "TU_ORGANIZACION_TERRAFORM_CLOUD"

    workspaces {
      name = "cloudflare-worker-demo"
    }
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}
