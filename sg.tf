resource "aws_security_group" "sg_postgres" {
  name        = "postgres-sg"
  description = "Allow postgresql traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "Postgres traffic"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "postgres-traffic"
  }
}

resource "aws_security_group" "chainlink" {
  name        = "chainlink-tunel"
  description = "Allow chainlink tunneling traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "chainlink tunel"
    from_port   = 6688
    to_port     = 6688
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "chainlink_tunel"
  }
}

resource "aws_security_group" "web" {
  name        = "web"
  description = "Allow all web traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "web http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "web_traffic"
  }
}
