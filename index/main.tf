resource "oci_nosql_index" "this" {
  keys {
    column_name     = var.keys.column_name
    json_field_type = var.keys.json_field_type
    json_path       = var.keys.json_path
  }
  name             = var.name
  table_name_or_id = var.table_name_or_id
  compartment_id   = var.compartment_id
  is_if_not_exists = var.is_if_not_exists
}
