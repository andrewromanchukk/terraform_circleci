# resource "aws_route_table" "my_vpc_eu_west" {
#   vpc_id = aws_vpc.my_vpc.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.my_vpc_igw.id
#   }

#   tags = {
#     Name = "Subnet Route Table."
#   }
# }

# resource "aws_route_table_association" "my_vpc_eu_west" {
#   subnet_id      = aws_subnet.my_subnet_1a.id
#   route_table_id = aws_route_table.my_vpc_eu_west.id
# }