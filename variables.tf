variable "aws_vpc" {
  description = "Name of the AWS VPC to be onboarded; Also used for AWS Connector name"
  type        = string
  default     = ""
}

variable "azure_vnet" {
  description = "Name of the Azure VNet to be onboarded; Also used for Azure Connector name"
  type        = string
  default     = ""
}

variable "gcp_vpc" {
  description = "Name of the GCP VPC to be onboarded; Also used for GCP Connector name"
  type        = string
  default     = ""
}

variable "oci_vcn" {
  description = "Name of the OCI VCN to be onboarded; Also used for OCI Connector name"
  type        = string
  default     = ""
}

variable "cloud_region" {
  description = "Name of the cloud region to use for onboarding"
  type        = string
  default     = ""
}

variable "compartment_id" {
  description = "OCI compartment ID"
  type        = string
  default     = ""
}

variable "project" {
  description = "Name of the GCP project"
  type        = string
  default     = ""
}

variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
  default     = ""
}

variable "resource_group" {
  description = "Name of the Azure VNet to be onboarded; Also used for Azure Connector name"
  type        = string
  default     = ""
}

variable "cxp" {
  description = "Alkira CXP to create connector in"
  type        = string
}

variable "size" {
  description = "Alkira connector size"
  type        = string
  default     = "SMALL"
}

variable "billing_tag" {
  description = "Alkira billing tag applied to connector"
  type        = string
}

variable "credential" {
  description = "Alkira credential used for AWS authentication"
  type        = string
}

variable "segment" {
  description = "Alkira segment to add connector to"
  type        = string
}

variable "group" {
  description = "Alkira Group to add connector to"
  type        = string
}

variable "custom_prefixes" {
  description = "List of custom prefix-lists for routing (prefix-lists must already exist in Alkira CSX)"
  type        = list(string)
  default     = []
}

variable "onboard_subnets" {
  description = "List of subnet names to onboard in lieu of entire network"
  type        = list(string)
  default     = []
}
