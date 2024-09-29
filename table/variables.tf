variable "compartment_id" {
  description = "(Required) (Updatable) Compartment Identifier."
  type        = string
}

variable "ddl_statement" {
  description = "(Required) (Updatable) Complete CREATE TABLE DDL statement. When update ddl_statement, it should be ALTER TABLE DDL statement."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace."
  type        = map(string)
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only."
  type        = map(string)
  default     = {}
}

variable "is_auto_reclaimable" {
  description = "(Optional) True if table can be reclaimed after an idle period."
  type        = bool
  default     = false
}

variable "name" {
  description = "(Required) Table name."
  type        = string
}

variable "table_limits" {
  description = "(Optional) (Updatable) Throughput and storage limits configuration of a table. It is required for top level table, must be null for child table as child table shares its top parent table's limits."
  type = object({
    capacity_mode      = optional(string)
    max_read_units     = number
    max_storage_in_gbs = number
    max_write_units    = number
  })
}
