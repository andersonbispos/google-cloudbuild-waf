# terraform {
#   required_providers {
#     google = {
#       source  = "hashicorp/google"
#       version = "4.64.0"
#     }
#   }
# }

provider "google" {
  /* credentials = "/Users/anderson/Documents/gcp-svc/lab-terraform-8127-a61476b430e2.json" */
  project = var.project
  region  = var.region
}