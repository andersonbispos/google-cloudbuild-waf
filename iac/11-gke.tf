resource "google_container_cluster" "gke_cluster" {
  name     = "teste-gke-cluster01"
  location = var.zone

  remove_default_node_pool = true
  initial_node_count       = 1

  networking_mode = "VPC_NATIVE"

  ip_allocation_policy {

  }
}

## Separately Managed Node Pool
resource "google_container_node_pool" "gke_pool" {
  name       = "${google_container_cluster.gke_cluster.name}-node-pool-01"
  cluster    = google_container_cluster.gke_cluster.id
  location =  var.zone
  node_count = 2

  node_config {

    spot = false

    machine_type = "e2-medium"
    disk_size_gb = 50

  }

  lifecycle {
    ignore_changes = [
      location,
    ]
  }

}