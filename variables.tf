variable "database_flex_components_lookup" {
  description = <<EOT
Map of database_flex_components_lookup, attributes below
Required:
    - compartment_id
Optional:
    - name
    - shape
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    name           = optional(string)
    shape          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

