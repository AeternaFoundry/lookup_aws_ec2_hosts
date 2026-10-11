output "ec2_hosts_lookup_filter" {
  description = "Map of filter values across all ec2_hosts_lookup, keyed the same as var.ec2_hosts_lookup"
  value       = { for k, v in data.aws_ec2_hosts.ec2_hosts_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "ec2_hosts_lookup_ids" {
  description = "Map of ids values across all ec2_hosts_lookup, keyed the same as var.ec2_hosts_lookup"
  value       = { for k, v in data.aws_ec2_hosts.ec2_hosts_lookup : k => v.ids if v.ids != null && length(v.ids) > 0 }
}
output "ec2_hosts_lookup_outpost_arn" {
  description = "Map of outpost_arn values across all ec2_hosts_lookup, keyed the same as var.ec2_hosts_lookup"
  value       = { for k, v in data.aws_ec2_hosts.ec2_hosts_lookup : k => v.outpost_arn if v.outpost_arn != null && length(v.outpost_arn) > 0 }
}
output "ec2_hosts_lookup_region" {
  description = "Map of region values across all ec2_hosts_lookup, keyed the same as var.ec2_hosts_lookup"
  value       = { for k, v in data.aws_ec2_hosts.ec2_hosts_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ec2_hosts_lookup_tags" {
  description = "Map of tags values across all ec2_hosts_lookup, keyed the same as var.ec2_hosts_lookup"
  value       = { for k, v in data.aws_ec2_hosts.ec2_hosts_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

