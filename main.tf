data "oci_database_flex_components" "database_flex_components_lookup" {
  for_each = var.database_flex_components_lookup

  compartment_id = each.value.compartment_id
  name           = each.value.name
  shape          = each.value.shape

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

