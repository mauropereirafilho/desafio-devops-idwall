resource "google_compute_instance" "instance-desafio" {
  name         = "vm-desafio"
  machine_type = "n1-standard-1"
  zone         = var.zone
  depends_on   = [google_compute_firewall.firewall_desafio]


  tags = ["value", "vm-desafio"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }


  network_interface {
    network = "vpc-desafio"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = file("./modules/instance/build.sh")

}


