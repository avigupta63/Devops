







# <BLOCK_TYPE> < RESOURCE_TYPE> < BLOCK_NAME> {
  #CONFIGURATION
 # } 
/*--------*/

provider "aws" {       ##aws----library  name of cloud
  # Configuration options
  region = "ap-southeast-2"
}


resource "aws_instance" "my-aws_instance" {
    ami = "ami-07ba57196a766fc6d"
    instance_type = "t2.micro"
    key_name = "root3.0-key-sydny"
    security_groups = [ "default"]    
    
  
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