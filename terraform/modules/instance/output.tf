output "instance_ip" {
  value = google_compute_instance.instance-desafio.network_interface[0].access_config[0].nat_ip
}

output "firewall_desafio" {
  value = google_compute_firewall.firewall_desafio
}