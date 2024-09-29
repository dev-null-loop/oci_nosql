resource "oci_nosql_table" "this" {
  compartment_id      = var.compartment_id
  ddl_statement       = var.ddl_statement
  name                = var.name
  defined_tags        = var.defined_tags
  freeform_tags       = var.freeform_tags
  is_auto_reclaimable = var.is_auto_reclaimable
  dynamic "table_limits" {
    for_each = var.table_limits[*]
    iterator = tl
    content {
      max_read_units     = tl.value.max_read_units
      max_storage_in_gbs = tl.value.max_storage_in_gbs
      max_write_units    = tl.value.max_write_units
      capacity_mode      = tl.value.capacity_mode
    }
  }
}
