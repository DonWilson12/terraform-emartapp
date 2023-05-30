resource "aws_route_table_association" "publicRT_AZ_1c" {
  subnet_id      = aws_subnet.public-ap-northeast-1c.id
  route_table_id = aws_route_table.publicRT.id
}

resource "aws_route_table_association" "publicRT_AZ_1d" {
  subnet_id      = aws_subnet.public-ap-northeast-1d.id
  route_table_id = aws_route_table.publicRT.id
}

resource "aws_route_table_association" "privateRT1_AZ_1c" {
  subnet_id      = aws_subnet.private-ap-northeast-1c.id
  route_table_id = aws_route_table.privateRT_1c.id
}

resource "aws_route_table_association" "privateRT2_AZ_1d" {
  subnet_id      = aws_subnet.private-ap-northeast-1d.id
  route_table_id = aws_route_table.privateRT_1d.id
}
