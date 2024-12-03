output "vpc_id_califorinia" {
  value = aws_vpc.Califorinia_VPC.id

}

# output "igw_id_califorinia" {
#   value = aws_internet_gateway.igw.id

# }

# output "nat_id_califorinia" {
#   value = aws_nat_gateway.nat.id

# }

output "private_route_table_id_califorinia" {
  value = aws_route_table.private.id

}

# output for my instance ids
# output "instance_id_asg_califorinia" {
#     value = aws_instance.asg.id
# }