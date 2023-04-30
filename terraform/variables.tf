variable "region" {
  type        = string
  description = "Região da GCP em que será provisionada a instância"
}

variable "zone" {
  type        = string
  description = "Zona da GCP em que será provisionada a instância"
}

variable "ssh_ip_range" {
  type        = string
  description = "IP público para acesso via SSH"
}