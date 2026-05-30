variable "compartment_id" {
  description = "(Optional) The OCID of the table's compartment.  Required if the tableNameOrId path parameter is a table name. Optional if tableNameOrId is an OCID.  If tableNameOrId is an OCID, and compartmentId is supplied, the latter must match the identified table's compartmentId."
  type        = string
  default     = null
}

variable "max_read_units" {
  description = "(Optional) Maximum sustained read throughput limit for the new replica table. If not specified, the local table's read limit is used."
  type        = number
  default     = null
}

variable "max_write_units" {
  description = "(Optional) Maximum sustained write throughput limit for the new replica table. If not specified, the local table's write limit is used."
  type        = number
  default     = null
}

variable "region" {
  description = "(Required) Name of the remote region in standard Oracle Cloud Infrastructure format, i.e. us-ashburn-1"
  type        = string
}

variable "table_name_or_id" {
  description = "(Required) A table name within the compartment, or a table OCID."
  type        = string
}
