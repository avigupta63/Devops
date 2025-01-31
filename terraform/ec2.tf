







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
data type:-

string: "anilbamnotel"
number: 123455
bool: true/false ,0/1

list: ["applet","mango","banana",21545,"apple,""orange"] ---changes

set:{"applet","mango","banana",21545,"orange"}   ----duplicate values not alllowed ,unique vale store repated value not allaowed
tuples: ["applet","mango","banana",21545,"orange"] ------not changes tuples ------in script

map: {fruit="apply",name="anil",address="nagpur"} ----
*/