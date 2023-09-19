resource "aws_db_instance" "expand-quicknode" {
  identifier           = "expand-quicknode"
  allocated_storage    = 100
  storage_type         = "gp3"
  engine               = "postgres"
  engine_version       = "15.3"
  instance_class       = "db.m5d.large"
  username             = "postgres"
  password             = "postgres"
  db_subnet_group_name = "subnet-0102d795f931b8042"
  vpc_security_group_ids = ["sg-0d98ac28ed66a9674"]
}
