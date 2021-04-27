output "rds_hostname" {
  value = aws_db_instance.pg_db.address
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "alb_dns" {
  value = aws_lb.alb.dns_name
}
