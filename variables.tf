variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "aws_profile" {
  type = string
}

variable "project_name" {
  type = string
}

variable "pg_version" {
  type    = string
  default = "13.1"
}

variable "rds_db_name" {
  type = string
}

variable "rds_instance_identifier" {
  type = string
}

variable "rds_master_password" {
  type = string
}

variable "rds_master_username" {
  type    = string
  default = "postgres"
}

variable "rds_multi_az" {
  type    = bool
  default = false
}

variable "rds_instance_class" {
  type    = string
  default = "db.t3.micro"
}

variable "log_retention" {
  type    = string
  default = "7"
}

