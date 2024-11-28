resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.Hong-Kong_VPC.id

  tags = {
    Name    = "Hong-Kong_IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
