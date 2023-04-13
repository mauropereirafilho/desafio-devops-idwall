variable "region" {
  type        = string
  description = "Região da GCP em que será provisionada a instância"
}

variable "ssh_ip_range" {
  description = "Range de IP para acesso via SSH"
}

variable "zone" {
  type        = string
  description = "Zona da GCP em que será provisionada a instância"
}