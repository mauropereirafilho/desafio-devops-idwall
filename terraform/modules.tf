module "vpc" {
  source = "./modules/vpc"

}

module "instance" {
  source       = "./modules/instance"
  depends_on   = [module.vpc]
  zone         = var.zone
  ssh_ip_range = var.ssh_ip_range

}