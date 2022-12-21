resource "aws_route_table_association" "private_sub" {

    count          = length(var.subnets_cidr)
    subnet_id      = element(aws_subnet.private_subnet.*.id , count.index)
    route_table_id = aws_route_table.private_route_table.id

}