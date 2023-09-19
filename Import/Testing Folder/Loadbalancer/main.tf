provider "aws" {
  region = "ap-southeast-1"  # Change to your desired region
}

resource "aws_lb" "ELB" {
  name               = "Fantom-Load-Balancer"
  subnets            = ["subnet-0ba82a4bb12052bf5", "subnet-078a8e647acac2c5f"]
  load_balancer_type = "application"  
}