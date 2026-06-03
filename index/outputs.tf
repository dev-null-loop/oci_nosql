output "id" {
  description = "The id of the resource."
  value       = oci_nosql_index.this.id
}

output "compartment_id" {
  description = "Compartment Identifier."
  value       = oci_nosql_index.this.compartment_id
}

output "state" {
  description = "The state of an index."
  value       = oci_nosql_index.this.state
}

output "lifecycle_details" {
  description = "A message describing the current state in more detail."
  value       = oci_nosql_index.this.lifecycle_details
}

output "table_id" {
  description = "the OCID of the table to which this index belongs."
  value       = oci_nosql_index.this.table_id
}

output "table_name" {
  description = "The name of the table to which this index belongs."
  value       = oci_nosql_index.this.table_name
}
