output "database_flex_components_lookup_id" {
  description = "Map of id values across all database_flex_components_lookup, keyed the same as var.database_flex_components_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_database_flex_components.database_flex_components_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_flex_components_lookup_compartment_id" {
  description = "Map of compartment_id values across all database_flex_components_lookup, keyed the same as var.database_flex_components_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_database_flex_components.database_flex_components_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "database_flex_components_lookup_filter" {
  description = "Map of filter values across all database_flex_components_lookup, keyed the same as var.database_flex_components_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_database_flex_components.database_flex_components_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "database_flex_components_lookup_flex_component_collection" {
  description = "Map of flex_component_collection values across all database_flex_components_lookup, keyed the same as var.database_flex_components_lookup except keys with no flex_component_collection are omitted"
  value       = { for k, v in data.oci_database_flex_components.database_flex_components_lookup : k => v.flex_component_collection if v.flex_component_collection != null && length(v.flex_component_collection) > 0 }
}
output "database_flex_components_lookup_name" {
  description = "Map of name values across all database_flex_components_lookup, keyed the same as var.database_flex_components_lookup except keys with no name are omitted"
  value       = { for k, v in data.oci_database_flex_components.database_flex_components_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "database_flex_components_lookup_shape" {
  description = "Map of shape values across all database_flex_components_lookup, keyed the same as var.database_flex_components_lookup except keys with no shape are omitted"
  value       = { for k, v in data.oci_database_flex_components.database_flex_components_lookup : k => v.shape if v.shape != null && length(v.shape) > 0 }
}

