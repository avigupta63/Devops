provider "aws" {
    region = "eu-west-2"
  
}

module "ec2-instance_basic" {
    source = "./modules/ec2-instance" #vpc
  
}

module "ec2-instance_basic" {
    source = "./modules/ec2-instance" 
     #ce2-----demo--instance--main,var,output
     # source ="/.modules/instance
}







terraform {
  backend "s3" {
    bucket = "my-terra-bucket00999"
    key    = "tf-state/terraform.tfstate"
    region = "eu-west-2"
    dynamodb_table = "my-terra-table"
  }
}