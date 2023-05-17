provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA2NYSW4RH4SOJ3RH7"
  secret_key = "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"
}
resource "aws_db_instance" "test-db" {
  identifier = "test-database"

  allocated_storage    = 10
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  db_name              = var.db_name
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot  = true



}