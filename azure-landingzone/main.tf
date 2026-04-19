module "management_groups" {
  source    = "./modules/management_groups"
  root_name = "corp-root"
}

module "networking" {
  source   = "./modules/networking"
  rg_name  = "hub-network-rg"
  location = "East US"
}

module "governance" {
  source = "./modules/governance"
}