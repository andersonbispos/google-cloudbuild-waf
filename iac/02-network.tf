/* resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "vpc_subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_range
  region        = var.region
  network       = google_compute_network.vpc_network.self_link
} */

resource "google_compute_global_address" "testelb" {
  name         = "testelb-ip"
  address_type = "EXTERNAL"
}