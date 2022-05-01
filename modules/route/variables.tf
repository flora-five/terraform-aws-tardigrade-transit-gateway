variable "destination_cidr_block" {
  description = "IPv4 or IPv6 CIDR range used for destination matches"
  type        = string
  default     = null
}

variable "prefix_list_id" {
  description = "ID of EC2 Prefix List used for destination matches"
  type        = string
  default     = null
}

variable "transit_gateway_route_table_id" {
  description = "ID of EC2 Transit Gateway Route Table"
  type        = string
}

variable "blackhole" {
  description = "Boolean indicating whether to drop traffic that matches this route"
  type        = bool
  default     = false
}


variable "transit_gateway_attachment_id" {
  description = "ID of EC2 Transit Gateway Attachment (required if `blackhole` is `false`)"
  type        = string
  default     = null
}
