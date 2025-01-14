provider "aws" {
    region = var.region
  
}
module "myapp-vpc" {
  source = "./vpc"
  #source = "github.com/sprintqaDevOps/vpc.git"
  cidr_block_vpc = var.cidr_block_vpc
  prefix         = var.prefix
  cidr_block_subnet = "10.0.1.0/24"
  cidr_block_route = var.cidr_block_route
}
module "myapp-instance" {
  source = "./instance"
  #source = "github.com/sprintqaDevOps/web-server.git"
  key_name     =var.key_name
  ssh_key_path =var.ssh_key_path
  ami          = var.ami
  instance_type = var.instance_type
  subnet_id     = module.myapp-vpc.subnet.id 
  prefix        = var.prefix 
  vpc_id        = module.myapp-vpc.my_vpc.id
  security_group_name= var.security_group_name

}
module "myapp-rds"{
  source = "./rds"
  
}