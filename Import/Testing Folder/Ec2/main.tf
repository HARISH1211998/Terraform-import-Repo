resource "aws_instance" "test2" {
  instance_type = "t2.small"
  ami           = "ami-0df7a207adb9748c7"  # Specify the appropriate AMI ID
  subnet_id     = "subnet-0ba82a4bb12052bf5"  # Specify the appropriate subnet ID
  key_name      = "testing-key"  # Replace with the actual key pair name
  vpc_security_group_ids = ["sg-0e2bf9ce4149e19f6"] 
}
