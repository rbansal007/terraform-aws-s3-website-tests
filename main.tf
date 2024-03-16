terraform {
  cloud {
    hostname = "ramit-fdo.tf-support.hashicorpdemo.com"
    organization = "testDockerRuns"

    workspaces {
      name = "testWorkspace_kubernetes"
    }
  }
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.0"
    }
  }
}

provider "random" {
  # Configuration options
}

resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "/@£$"
}
