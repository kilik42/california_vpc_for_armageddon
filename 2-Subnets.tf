#These are   for  public

resource "aws_subnet" "public-ap-east-1a" {
  vpc_id                  = aws_vpc.Hong-Kong_VPC.id
  cidr_block              = "10.105.1.0/24"
  availability_zone       = "ap-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-east-1a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "public-ap-east-1b" {
  vpc_id                  = aws_vpc.Hong-Kong_VPC.id
  cidr_block              = "10.105.3.0/24"
  availability_zone       = "ap-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-east-1b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "public-ap-east-1c" {
  vpc_id                  = aws_vpc.Hong-Kong_VPC.id
  cidr_block              = "10.105.5.0/24"
  availability_zone       = "ap-east-1c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-east-1c"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}


#these are for private
resource "aws_subnet" "private-ap-east-1a" {
  vpc_id            = aws_vpc.Hong-Kong_VPC.id
  cidr_block        = "10.105.11.0/24"
  availability_zone = "ap-east-1a"

  tags = {
    Name    = "private-ap-east-1a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "private-ap-east-1b" {
  vpc_id            = aws_vpc.Hong-Kong_VPC.id
  cidr_block        = "10.105.13.0/24"
  availability_zone = "ap-east-1b"

  tags = {
    Name    = "private-ap-east-1b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}


resource "aws_subnet" "private-ap-east-1c" {
  vpc_id            = aws_vpc.Hong-Kong_VPC.id
  cidr_block        = "10.105.15.0/24"
  availability_zone = "ap-east-1c"

  tags = {
    Name    = "private-ap-east-1c"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}


