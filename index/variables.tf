variable "compartment_id" {
  description = "(Optional) The OCID of the table's compartment.  Required if the tableNameOrId path parameter is a table name. Optional if tableNameOrId is an OCID.  If tableNameOrId is an OCID, and compartmentId is supplied, the latter must match the identified table's compartmentId."
  type        = string
  default     = null
}

variable "is_if_not_exists" {
  description = "(Optional) If true, the operation completes successfully even when the index exists.  Otherwise, an attempt to create an index that already exists will return an error."
  type        = bool
  default     = false
}

variable "keys" {
  description = "(Required) A set of keys for a secondary index."
  type = object({
    column_name     = string
    json_field_type = optional(string)
    json_path       = optional(string)
  })
}

variable "name" {
  description = "(Required) Index name."
  type        = string
}

variable "table_name_or_id" {
  description = "(Required) A table name within the compartment, or a table OCID."
  type        = string
}
