resource "aws_security_group" "cluster" {
  name = "Cluster Security Group"
  vpc_id = aws_vpc.my_vpc.id

  dynamic "ingress"{
      for_each = ["80", "443", "22", "8080", "3306"]
      content {
        from_port   = ingress.value
        to_port     = ingress.value
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  tags = {
      Name = "Dynamic Security Group"
      Owner = "Andrii Romanchuk"
  }
}
