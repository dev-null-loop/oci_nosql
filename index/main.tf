resource "oci_nosql_index" "this" {
  dynamic "keys" {
    for_each = var.keys
    iterator = ke
    content {
      column_name     = ke.value.column_name
      json_field_type = ke.value.json_field_type
      json_path       = ke.value.json_path
    }
  }
  name             = var.name
  table_name_or_id = var.table_name_or_id
  compartment_id   = var.compartment_id
  is_if_not_exists = var.is_if_not_exists
}
