variable "gcp_vpc" {
  description = "Name of cloud network and Alkira connector"
  type        = string
}

variable "cloud_region" {
  description = "Name of cloud network region"
  type        = string
}

variable "project" {
  description = "Name of the GCP project"
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