resource "aws_ec2_transit_gateway_route" "this" {
  count = var.destination_cidr_block != null ? 1 : 0

  blackhole                      = var.blackhole
  destination_cidr_block         = var.destination_cidr_block
  transit_gateway_attachment_id  = var.transit_gateway_attachment_id
  transit_gateway_route_table_id = var.transit_gateway_route_table_id
}

resource "aws_ec2_transit_gateway_prefix_list_reference" "this" {
  count = var.prefix_list_id != null ? 1 : 0

  blackhole                      = var.blackhole
  prefix_list_id                 = var.prefix_list_id
  transit_gateway_attachment_id  = var.transit_gateway_attachment_id
  transit_gateway_route_table_id = var.transit_gateway_route_table_id
}
