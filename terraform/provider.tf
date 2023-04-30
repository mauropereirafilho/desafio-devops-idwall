terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.60.2"
    }
  }
}

provider "google" {
  credentials = file("chave.json")

  project = "desafio-devops-383518"
  region  = var.region
  zone    = var.zone
}