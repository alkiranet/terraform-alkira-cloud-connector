output "aws_connector" {
  description = "AWS Connector resource being created"
  value       = module.onboard_aws_vpc
}

output "azure_connector" {
  description = "Azure Connector resource being created"
  value       = module.onboard_azure_vnet
}