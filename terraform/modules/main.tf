provider "aws" {
    region = "eu-west-2"
  
}

module "ec2-instance_basic" {
    source = "./modules/ec2-instance"
  
}