output "vpn_gateway_attachments_id" {
  description = "Map of id values across all vpn_gateway_attachments, keyed the same as var.vpn_gateway_attachments"
  value       = { for k, v in aws_vpn_gateway_attachment.vpn_gateway_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vpn_gateway_attachments_region" {
  description = "Map of region values across all vpn_gateway_attachments, keyed the same as var.vpn_gateway_attachments"
  value       = { for k, v in aws_vpn_gateway_attachment.vpn_gateway_attachments : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vpn_gateway_attachments_vpc_id" {
  description = "Map of vpc_id values across all vpn_gateway_attachments, keyed the same as var.vpn_gateway_attachments"
  value       = { for k, v in aws_vpn_gateway_attachment.vpn_gateway_attachments : k => v.vpc_id if v.vpc_id != null && length(v.vpc_id) > 0 }
}
output "vpn_gateway_attachments_vpn_gateway_id" {
  description = "Map of vpn_gateway_id values across all vpn_gateway_attachments, keyed the same as var.vpn_gateway_attachments"
  value       = { for k, v in aws_vpn_gateway_attachment.vpn_gateway_attachments : k => v.vpn_gateway_id if v.vpn_gateway_id != null && length(v.vpn_gateway_id) > 0 }
}

