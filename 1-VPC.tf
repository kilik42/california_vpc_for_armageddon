# this  makes  vpc.id which is aws_vpc.Hong-Kong_VPC.id
resource "aws_vpc" "Califorinia_VPC" {
  cidr_block = "10.106.0.0/16"

  tags = {
    Name = "Califorinia_VPC"
    Service = "applicationforcali"
    Owner = "Marvin"
    Planet = "CaliLife"
  }
}
