	
provider "aws" {
  region     = "us-east-2"
  // access_key = ""
  //secret_key = ""
}

module "server" {
  count        = var.create_module ? 1 : 0
  source        = "./modules/server"
  region = var.region
  instance_type = var.instance_type
  instance_name  = var.instance_name
}
