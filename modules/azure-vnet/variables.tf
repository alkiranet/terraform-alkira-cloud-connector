variable "is_custom" {
  description = "Controls if custom prefixes are used for routing from cloud network to CXP; This value automatically changes to 'true' if custom_prefixes list is set"
  type        = bool
  default     = false
}

variable "is_sub" {
  description = "Controls if subscription ID is passed in or referenced in Alkira credential; Default uses Alkira credential"
  type        = bool
  default     = false
}

variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
  default     = ""
}

variable "resource_group" {
  description = "Name of Azure Resource Group"
  type        = string
}

variable "azure_vnet" {
  description = "Name of cloud network and Alkira connector"
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
  description = "ID of Alkira credential used for Azure authentication"
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