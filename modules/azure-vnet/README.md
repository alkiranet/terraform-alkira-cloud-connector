# Onboard Azure VNet

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.29 |
| <a name="requirement_alkira"></a> [alkira](#requirement\_alkira) | >= 0.7.4 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 2.46.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alkira"></a> [alkira](#provider\_alkira) | >= 0.7.4 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 2.46.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alkira_connector_azure_vnet.connector](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/connector_azure_vnet) | resource |
| [alkira_policy_prefix_list.prefix](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/data-sources/policy_prefix_list) | data source |
| [azurerm_virtual_network.azure_vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_vnet"></a> [azure\_vnet](#input\_azure\_vnet) | Name of cloud network and Alkira connector | `string` | n/a | yes |
| <a name="input_billing_tag_id"></a> [billing\_tag\_id](#input\_billing\_tag\_id) | ID of Alkira billing tag applied to connector | `string` | n/a | yes |
| <a name="input_credential_id"></a> [credential\_id](#input\_credential\_id) | ID of Alkira credential used for Azure authentication | `string` | n/a | yes |
| <a name="input_custom_prefixes"></a> [custom\_prefixes](#input\_custom\_prefixes) | List of custom prefix-lists for routing (prefix-lists must already exist in Alkira CSX) | `list(string)` | `[]` | no |
| <a name="input_cxp"></a> [cxp](#input\_cxp) | Alkira CXP to create connector in | `string` | n/a | yes |
| <a name="input_group"></a> [group](#input\_group) | Name of Alkira group to add connector to | `string` | n/a | yes |
| <a name="input_is_custom"></a> [is\_custom](#input\_is\_custom) | Controls if custom prefixes are used for routing from cloud network to CXP; This value automatically changes to 'true' if custom\_prefixes list is set | `bool` | `false` | no |
| <a name="input_is_sub"></a> [is\_sub](#input\_is\_sub) | Controls if subscription ID is passed in or referenced in Alkira credential; Default uses Alkira credential | `bool` | `false` | no |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | Name of Azure Resource Group | `string` | n/a | yes |
| <a name="input_segment_id"></a> [segment\_id](#input\_segment\_id) | ID of Alkira segment to add connector to | `string` | n/a | yes |
| <a name="input_size"></a> [size](#input\_size) | Size of Alkira connector; SMALL, MEDIUM, LARGE | `string` | `"SMALL"` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | Azure subscription ID | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_billing_tag_id"></a> [billing\_tag\_id](#output\_billing\_tag\_id) | Azure Connector billing tag |
| <a name="output_connector_id"></a> [connector\_id](#output\_connector\_id) | Azure Connector ID |
| <a name="output_cxp"></a> [cxp](#output\_cxp) | Azure Connector CXP |
| <a name="output_group"></a> [group](#output\_group) | Azure Connector group |
| <a name="output_segment_id"></a> [segment\_id](#output\_segment\_id) | Azure Connector segment |
| <a name="output_size"></a> [size](#output\_size) | Azure Connector size |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->