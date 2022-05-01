output "route" {
  description = "Object with the Transit Gateway route attributes"
  value       = element(coalescelist(aws_ec2_transit_gateway_route.this.*, aws_ec2_transit_gateway_prefix_list_reference.this.*), 0)
}
