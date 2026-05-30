variable "compartment_id" {
  description = "(Required) (Updatable) The tenancy's OCID"
  type        = string
}

variable "environment" {
  description = "(Required) (Updatable) The service environment type."
  type        = string
}

variable "is_opc_dry_run" {
  description = "(Optional) (Updatable) If true, indicates that the request is a dry run. A dry run request does not modify the configuration item details and is used only to perform validation on the submitted data."
  type        = bool
  default     = null
}

variable "kms_key" {
  description = "(Required when environment=HOSTED) (Updatable) Information about the state of the service's encryption key management."
  type = object({
    id           = optional(string)
    kms_vault_id = optional(string)
    time_created = optional(string)
    time_updated = optional(string)
  })
  default = null
}
