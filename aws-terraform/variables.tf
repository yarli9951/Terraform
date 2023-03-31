variable "vpc_cidrs" {
   type = map
   default = {
   
   us-east-1 = "10.0.0.0/16"
   us-east-2 = "10.1.0.0/16"
   
   }
 }
 
 variable "region" {
    type = map
	default = {
	
	   region1 = "us-east-1"
	   region2 = "us-east-2"
	
	}
 
 
 }
 
 

 variable "apps" {
  type = map(any)
  default = {
    "foo" = {
      "region" = "us-east-1",
    },
    "bar" = {
      "region" = "eu-west-1",
    },
    "baz" = {
      "region" = "ap-south-1",
    },
  }
}

resource "random_pet" "example" {
  for_each = var.apps
}

variable "ami" {

  default = "ami-026dea5602e368e96"
}