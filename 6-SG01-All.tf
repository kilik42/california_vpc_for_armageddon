resource "aws_security_group" "Califorinia-sg01-tg01" {
  name        = "Califorinia-sg01-tg01"
  description = "Califorinia-sg01-tg01"
  vpc_id      = aws_vpc.Califorinia_VPC.id

  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "MyEvilBox"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

   ingress {
    description = "Syslog"
    from_port   = 514
    to_port     = 514
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "Califorinia-sg01-tg01"
    Service = "security group for cali for target group 1"
    Owner = "Marvin"
    Planet = "CaliLife"
  }

}





resource "aws_security_group" "Califorinia-sg02-LB01" {
  name        = "Califorinia_VPC-sg02-LB01"
  description = "Califorinia_VPC-sg02-LB01"
  vpc_id      = aws_vpc.Califorinia_VPC.id

  ingress {
    description = "MyHomePage"
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
    Name    = "Califorinia_VPC-sg02-LB01"
    Service = "applicationforcali"
    Owner = "Marvin"
    Planet = "CaliLife"
  }

}
