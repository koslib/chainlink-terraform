resource "aws_lb" "alb" {
  name               = "${var.project_name}-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.web.id, aws_security_group.chainlink.id]
  subnets            = aws_subnet.subnet_public.*.id

  enable_deletion_protection = false
}
