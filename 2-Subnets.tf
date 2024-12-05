#These are   for  public

resource "aws_subnet" "public-us-west-1a" {
  vpc_id                  = aws_vpc.Califorinia_VPC.id
  cidr_block              = "10.106.1.0/24"
  availability_zone       = "us-west-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-west-1a"
    Service = "applicationforcali"
    Owner   = "Marvin"
    Planet  = "CaliLife"
  }
}

# resource "aws_subnet" "public-us-west-1c" {
#   vpc_id                  = aws_vpc.Califorinia_VPC.id
#   cidr_block              = "10.106.3.0/24"
#   availability_zone       = "us-west-1c"
#   map_public_ip_on_launch = true

#   tags = {
#     Name    = "public-us-west-1c"
#     Service = "applicationforcali"
#     Owner   = "Marvin"
#     Planet  = "CaliLife"
#   }
# }

resource "aws_subnet" "public-us-west-1c" {
  vpc_id                  = aws_vpc.Califorinia_VPC.id
  cidr_block              = "10.106.3.0/24"
  availability_zone       = "us-west-1c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-west-1c"
    Service = "applicationforcali"
    Owner   = "Marvin"
    Planet  = "CaliLife"
  }
}


#these are for private
resource "aws_subnet" "private-us-west-1a" {
  vpc_id            = aws_vpc.Califorinia_VPC.id
  cidr_block        = "10.106.11.0/24"
  availability_zone = "us-west-1a"

  tags = {
    Name    = "private-us-west-1a"
    Service = "applicationforcali"
    Owner   = "Marvin"
    Planet  = "CaliLife"
  }
}

# resource "aws_subnet" "private-us-west-1b" {
#   vpc_id            = aws_vpc.Califorinia_VPC.id
#   cidr_block        = "10.106.12.0/24"
#   availability_zone = "us-west-1b"

#   tags = {
#     Name    = "private-us-west-1b"
#     Service = "applicationforcali"
#     Owner   = "Marvin"
#     Planet  = "CaliLife"
#   }
# }


resource "aws_subnet" "private-us-west-1c" {
  vpc_id            = aws_vpc.Califorinia_VPC.id
  cidr_block        = "10.106.13.0/24"
  availability_zone = "us-west-1c"

  tags = {
    Name    = "private-us-west-1c"
    Service = "applicationforcali"
    Owner   = "Marvin"
    Planet  = "CaliLife"
  }
}


