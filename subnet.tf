resource "aws_subnet" "my_subnet_1a" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "eu-central-1a"


  tags = {
    Name = "subnet A"
  }
}
