terraform {
  required_version = ">= 1.10.0"

  # Configure Terraform Cloud as the remote backend
  cloud {
    organization = "chainiz" # Replace with your org name

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

# Provider configuration
provider "cloudflare" {
  api_token = var.cloudflare_api_token
}
