# this  makes  vpc.id which is aws_vpc.Hong-Kong_VPC.id
resource "aws_vpc" "Hong-Kong_VPC" {
  cidr_block = "10.105.0.0/16"

  tags = {
    Name = "Hong-Kong_VPC"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Mustafar"
  }
}
