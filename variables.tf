variable "aws_vpc" {
  description = "Name of the AWS VPC to be onboarded; Also used for AWS Connector name"
  type        = string
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
  description = "Alkira credentail used for AWS authentication"
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