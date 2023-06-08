resource "aws_route_table_association" "publicRT_AZ_1a" {
  subnet_id      = aws_subnet.public-us-east-1a.id
  route_table_id = aws_route_table.publicRT.id
}

resource "aws_route_table_association" "publicRT_AZ_1b" {
  subnet_id      = aws_subnet.public-us-east-1b.id
  route_table_id = aws_route_table.publicRT.id
}

resource "aws_route_table_association" "privateRT1_AZ_1a" {
  subnet_id      = aws_subnet.private-us-east-1a.id
  route_table_id = aws_route_table.privateRT_1a.id
}

resource "aws_route_table_association" "privateRT2_AZ_1b" {
  subnet_id      = aws_subnet.private-us-east-1b.id
  route_table_id = aws_route_table.privateRT_1b.id
}
