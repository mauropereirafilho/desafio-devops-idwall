module "network" {
  source = "./modules/network"
  ssh_ip_range = var.ssh_ip_range
}

module "instance" {
  source       = "./modules/instance"
  depends_on   = [module.network]
  zone         = var.zone
}