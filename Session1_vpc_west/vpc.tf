resource "aws_vpc" "my_vpc" {

  cidr_block       = var.cidr_block_vpc 
  instance_tenancy = var.instance_tenancy

  tags = {
    Name = "${var.prefix} second_main_vpc"
    Department = "Production"
    Created_by = "Zukhra"
  }

}