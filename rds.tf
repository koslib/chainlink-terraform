resource "aws_db_subnet_group" "dbsg" {
  name       = "${var.project_name}-dbsg"
  subnet_ids = aws_subnet.subnet_public.*.id

  tags = {
    Name = "${var.project_name} DB subnet group"
  }
}

resource "aws_db_instance" "pg_db" {
  identifier = var.rds_instance_identifier

  allocated_storage           = 20
  allow_major_version_upgrade = false
  auto_minor_version_upgrade  = true
  backup_retention_period     = 14
  skip_final_snapshot         = true

  engine         = "postgres"
  engine_version = var.pg_version

  instance_class         = var.rds_instance_class
  multi_az               = var.rds_multi_az
  publicly_accessible    = false
  db_subnet_group_name   = aws_db_subnet_group.dbsg.name
  vpc_security_group_ids = [aws_security_group.sg_postgres.id]

  performance_insights_enabled = true

  username = var.rds_master_username
  password = var.rds_master_password
  name     = var.rds_db_name
}


