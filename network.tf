
resource "google_compute_network" "kube_network" {
  name                    = "kube-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "kube_subnet" {
  name          = "kube-subnet"
  ip_cidr_range = "10.0.0.0/22"
  region        = var.region
  network       = google_compute_network.kube_network.id
  secondary_ip_range {
    range_name    = "secondary"
    ip_cidr_range = "172.16.0.0/24"
  }
}
