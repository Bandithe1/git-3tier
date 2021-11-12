resource "aws_subnet" "pub_sub" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "172.16.1.0/24"
  availability_zone       = var.az
  map_public_ip_on_launch = true

  tags = {
    Project = "blackcloudgeeks"
  }
}

resource "aws_subnet" "prv_sub" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "172.16.4.0/24"
  availability_zone       = var.az
  map_public_ip_on_launch = false

  tags = {
    Project = "blackcloudgeeks"
  }
}