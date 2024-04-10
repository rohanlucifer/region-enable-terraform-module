module "enabled-region" {
  source = "./modules"
  region_name = "ap-south-2"
  enabled = "false"
}
