data "aws_ec2_hosts" "ec2_hosts_lookup" {
  for_each = var.ec2_hosts_lookup

  outpost_arn = each.value.outpost_arn
  region      = each.value.region
  tags        = each.value.tags

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

