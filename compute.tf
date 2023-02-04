resource "google_compute_instance" "kube_master" {
  for_each     = toset(var.clusters)
  name         = "kube-${each.key}-master"
  machine_type = var.machine_type
  zone         = var.zone
  tags         = var.tags
  boot_disk {
    initialize_params {
      image = var.os
    }
  }
  network_interface {
    network    = google_compute_network.kube_network.id
    subnetwork = google_compute_subnetwork.kube_subnet.id
    access_config {}
  }
  metadata = {
    ssh-keys = "${each.key}:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD7BEDZKvzFKbtAAQuty9WwD6VWcoMwoWO56w6C2UlYQxgQ3l1JK2XJMiUn/qqv4Iikca4TaRfxguFaBol3pgiXogsOjCGjQrpRM9LBSN1P8gYKbcRKBKHCsqnRKbUrAHJdrRYNSmdXGKIRHsXu5QS0VR0NixckLcmIHUf7AMw7cuRgOWT7O4+dVdvwclidTQVlDJxBkJ+dugsdyWyanMrDf/Ghw+BBWjnk+Vop3ucVmw8PuAOu3qn4PO7cqLQebLnkvy8z8leTl7HIoRDGyaDUIuThVOSEDQIop+uhr7oo4kV35eO3TUStV8/gPJFqwN8R+p9J6j+bLgtXrXMpjt8TXoSAnkUu6fyw2ebSmQO4piklR2NzHQ/H43CDg5ZvKzJEP/kExpvetqYeYQ0aFZjNuixPy1Sgc0IgNvWQOQ6Q2ytcvVgjKwrvOQWw82liLbbwkt77jvkP/MeSOec+Mgo7asy5E4V9qtjej02Qrzl2BSEOqzUdXyWyregsBov3rb8= jihadbenabra@cs-201626074710-default"
  }
}

resource "google_compute_instance" "kube_worker" {
  for_each     = toset(var.clusters)
  name         = "kube-${each.key}-worker"
  machine_type = var.machine_type
  zone         = var.zone
  tags         = var.tags
  boot_disk {
    initialize_params {
      image = var.os
    }
  }
  network_interface {
    network    = google_compute_network.kube_network.id
    subnetwork = google_compute_subnetwork.kube_subnet.id
    access_config {}
  }
  metadata = {
    ssh-keys = "${each.key}:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD7BEDZKvzFKbtAAQuty9WwD6VWcoMwoWO56w6C2UlYQxgQ3l1JK2XJMiUn/qqv4Iikca4TaRfxguFaBol3pgiXogsOjCGjQrpRM9LBSN1P8gYKbcRKBKHCsqnRKbUrAHJdrRYNSmdXGKIRHsXu5QS0VR0NixckLcmIHUf7AMw7cuRgOWT7O4+dVdvwclidTQVlDJxBkJ+dugsdyWyanMrDf/Ghw+BBWjnk+Vop3ucVmw8PuAOu3qn4PO7cqLQebLnkvy8z8leTl7HIoRDGyaDUIuThVOSEDQIop+uhr7oo4kV35eO3TUStV8/gPJFqwN8R+p9J6j+bLgtXrXMpjt8TXoSAnkUu6fyw2ebSmQO4piklR2NzHQ/H43CDg5ZvKzJEP/kExpvetqYeYQ0aFZjNuixPy1Sgc0IgNvWQOQ6Q2ytcvVgjKwrvOQWw82liLbbwkt77jvkP/MeSOec+Mgo7asy5E4V9qtjej02Qrzl2BSEOqzUdXyWyregsBov3rb8= jihadbenabra@cs-201626074710-default"
  }
}