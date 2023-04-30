resource "google_compute_firewall" "firewall_desafio" {
  project     = "desafio-devops-383518"
  name        = "firewall-desafio"
  network     = "vpc-desafio"
  description = "Firewall para gerenciar as portas do projeto"

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = concat(["${var.ssh_ip_range}/32"], ["0.0.0.0/0"])
  source_tags   = ["value"]
  target_tags   = ["vm-desafio"]

}

