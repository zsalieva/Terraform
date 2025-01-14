variable cidr_block_vpc {
    type = string
    default = "10.1.0.0/16"
    description = "Cidr block for vpc"
}

variable instance_tenancy {
    type = string
    default = "default"
    description = "A tenancy option for instances launched into the VPC"
}

variable key_name {
    type = string
    default = "my_macbook_key"
    description = "name of keypair"
}

variable ssh_key_path {
    type = string
    default =  "~/.ssh/id_rsa.pub"
    description = "path of ssh public key"  
}

variable region { 
    type = string
    default = "us-west-1"
    description = "Location of resources"
}

variable cidr_block_subnet {
    type = string
    default = "10.1.1.0/24"
    description = "Cidr block for subnet"
}

variable map_public_ip_on_launch {
    type    = bool
    default = true
    description = "Specify true to indicate that instances launched into the subnet should be assigned a public IP address"
}

variable cidr_block_route_table {
    type = string
    default = "0.0.0.0/0"
    description = "cidr block for route table"
}

variable security_group_name {
    type = string
}


variable security_group_description {
    type = string
}


variable prefix {
    type = string
}

variable ami {
    type = string
    description = "Image of ec2"
    validation {
                condition     = length(var.ami) > 4 && substr(var.ami, 0, 4) == "ami-"
                error_message = "The ami value must be a valid AMI id, starting with ami-."
        }

}
variable instance_type {
    type = string
}
