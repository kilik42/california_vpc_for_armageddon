resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.Califorinia_VPC.id

  tags = {
    Name    = "Califorinia_IG"
    Service = "applicationforcali"
    Owner   = "Marvin"
    Planet  = "CaliLife"
  }
}
