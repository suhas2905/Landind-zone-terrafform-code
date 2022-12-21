#creating route table
resource "aws_route_table" "private_route_table" {
    vpc_id = aws_vpc.SAP_VPC[0].id
    route {

        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.nat_gateway[0].id
    }
    tags = {

        Name = "My-Private-Routing-Table"
    }

}