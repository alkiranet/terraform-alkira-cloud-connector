variable "is_enabled" {
  description = "Controls if connector is enabled"
  type        = bool
  default     = true
}

variable "is_primary" {
  description = "Controls if connector is primary"
  type        = bool
  default     = true
}

variable "is_custom" {
  description = "Controls if custom prefixes are used for routing from cloud network to CXP; This value automatically changes to 'true' if custom_prefixes list is set"
  type        = bool
  default     = false
}

variable "cloud_region" {
  description = "Name of cloud network region"
  type        = string
}

variable "compartment_id" {
  description = "OCI compartment ID"
  type        = string
  default     = ""
  sensitive   = true
}

variable "oci_vcn" {
  description = "Name of the OCI VCN to be onboarded; Also used for OCI Connector name"
  type        = string
}

variable "cxp" {
  description = "Alkira CXP to create connector in"
  type        = string
}

variable "size" {
  description = "Size of Alkira connector; SMALL, MEDIUM, LARGE"
  type        = string
  default     = "SMALL"
}

variable "billing_tag_id" {
  description = "ID of Alkira billing tag applied to connector"
  type        = string
}

variable "credential_id" {
  description = "ID of Alkira credential used for AWS authentication"
  type        = string
}

variable "segment_id" {
  description = "ID of Alkira segment to add connector to"
  type        = string
}

variable "group" {
  description = "Name of Alkira group to add connector to"
  type        = string
}

variable "custom_prefixes" {
  description = "List of custom prefix-lists for routing (prefix-lists must already exist in Alkira CSX)"
  type        = list(string)
  default     = []
}