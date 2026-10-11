variable "ec2_hosts_lookup" {
  description = <<EOT
Map of ec2_hosts_lookup, attributes below
Optional:
    - outpost_arn
    - region
    - tags
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    outpost_arn = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
}

