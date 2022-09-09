resource "aws_db_instance" "default" {
  allocated_storage   = 10
  engine              = "mysql"
  engine_version      = "5.7"
  instance_class      = var.instance_class
  name                = var.name
  username            = "foo"
  password            = "foobarbaz"
  skip_final_snapshot = true
}
