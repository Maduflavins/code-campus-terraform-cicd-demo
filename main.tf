terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = var.project
}

# resource "google_compute_network" "vpc_network" {
#   name = "codecampus-network"
# }

# resource "google_compute_instance" "vm_instance" {
#   name         = "codecampus-instance"
#   machine_type = "f1-micro"
#   zone         = var.zone
#   tags         = ["web", "dev"]

#   boot_disk {
#     initialize_params {
#       #image = "debian-cloud/debian-11"
#       image = "cos-cloud/cos-stable"
#     }
#   }

#   network_interface {
#     network = google_compute_network.vpc_network.name
#     access_config {
#     }
#   }
# }
# resource "google_compute_firewall" "code-campus-firewal" {
#   name    = "code-campus-firewal"
#   network = google_compute_network.vpc_network.name

#   allow {
#     protocol = "icmp"
#   }

#   allow {
#     protocol = "tcp"
#     ports    = ["80"]
#   }

#   source_tags = ["web"]
# }

