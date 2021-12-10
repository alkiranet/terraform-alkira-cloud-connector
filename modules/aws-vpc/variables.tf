variable "account_id" {
  description = "AWS account ID that owns or contains calling entity"
  type        = string
  default     = ""
  sensitive   = true
}

variable "is_subnet" {
  description = "Controls if subnet gets onboarded in lieu of entire cloud network; This value automatically changes to 'true' if onboard_subnets list is set"
  type        = bool
  default     = false
}

variable "aws_vpc" {
  description = "Name of the AWS VPC to be onboarded; Also used for AWS Connector name"
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
  description = "ID of Alkira credentail used for AWS authentication"
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

variable "onboard_subnets" {
  description = "List of subnet names to onboard in lieu of entire network"
  type        = list(string)
  default     = []
}