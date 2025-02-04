







# <BLOCK_TYPE> < RESOURCE_TYPE> < BLOCK_NAME> {
  #CONFIGURATION
 # } 
/*--------*/

provider "aws" {
  region = "ap-southeast-2"  # Specify the AWS region
}

resource "aws_instance" "my_instance" {
  ami             = "ami-07ba57196a766fc6d"
  instance_type   = "t2.micro"
  key_name        = "root3.0-key-sydny"
  security_groups = ["default"]  # Ensure this security group exists

  tags = {
    Name = "My-Terraform-Instance"
  }
}




/*
resource "aws_instance" "my_instance" {

}

# <BLOCK_TYPE> <RESOURCE_TYPE> <BLOCK_NAME> {
#     # Configuration
# }
*/

provider "aws" {
    region = "ap-southeast-2" 
}

data "aws_subnet" "my_subnet" {
    id = var.subnet_id
}

resource "aws_bucket" "new_bucket" {
    name = "my-on-cdec-bux"
    region = "us-east-1"
    depends_on = [
        aws_instance.instance_1
    ]
}

resource "aws_security_group" "my_sg" {
    name = "my-sg"
    description = "allow HTTP Port"
    ingress {
        from_port        = 80
        to_port          = 80
        protocol         = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "instance_1" {
    ami = var.image_id
    instance_type = var.instance_type
    key_name = var.key_pair
#    security_groups = var.sg_name
    vpc_security_group_ids = [aws_security_group.my_sg.id]
    subnet_id = var.subnet_id
    user_data = <<-EOF
        #!/bin/bash
        yum install httpd -y
        systemctl start httpd
        systemctl enable httpd
    EOF
}

variable "image_id" {
  type        = string
  default     = "ami-07ba57196a766fc6d"
  description = "Enter AMI ID"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "key_pair" {
    default = "new-key-nv"
}

variable "subnet_id" {
    default = "subnet-091678d44aa5db41d"
}

# variable "sg_name" {
#     type = list
#     default = ["default"]
# }

output "demo" {
    value = "Hello World"
}

output "public_ip" {
    value = aws_instance.instance_1.public_ip
}

output "arn_subnet" {
    value = data.aws_subnet.my_subnet.arn
}











































/*
data type:-

string: "anilbamnotel"
number: 123455
bool: true/false ,0/1

list: ["applet","mango","banana",21545,"apple,""orange"] ---changes

set:{"applet","mango","banana",21545,"orange"}   ----duplicate values not alllowed ,unique vale store repated value not allaowed
tuples: ["applet","mango","banana",21545,"orange"] ------not changes tuples ------in script

map: {fruit="apply",name="anil",address="nagpur"} ----
*/
