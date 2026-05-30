resource "oci_nosql_table_replica" "this" {
  region           = var.region
  table_name_or_id = var.table_name_or_id
  compartment_id   = var.compartment_id
  max_read_units   = var.max_read_units
  max_write_units  = var.max_write_units
}
