resource "oci_nosql_configuration" "this" {
  compartment_id = var.compartment_id
  environment    = var.environment
  is_opc_dry_run = var.is_opc_dry_run
  dynamic "kms_key" {
    for_each = var.kms_key[*]
    iterator = kk
    content {
      id           = kk.value.id
      kms_vault_id = kk.value.kms_vault_id
      time_created = kk.value.time_created
      time_updated = kk.value.time_updated
    }
  }
}
