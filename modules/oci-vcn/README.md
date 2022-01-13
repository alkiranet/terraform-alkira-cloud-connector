# Onboard OCI VCN

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_alkira"></a> [alkira](#requirement\_alkira) | >= 0.8.0 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | >=4.41.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alkira"></a> [alkira](#provider\_alkira) | >= 0.8.0 |
| <a name="provider_oci"></a> [oci](#provider\_oci) | >=4.41.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alkira_connector_oci_vcn.connector](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/connector_oci_vcn) | resource |
| [alkira_policy_prefix_list.prefix](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/data-sources/policy_prefix_list) | data source |
| [oci_core_vcns.selected](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/data-sources/core_vcns) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_tag_id"></a> [billing\_tag\_id](#input\_billing\_tag\_id) | ID of Alkira billing tag applied to connector | `string` | n/a | yes |
| <a name="input_cloud_region"></a> [cloud\_region](#input\_cloud\_region) | Name of cloud network region | `string` | n/a | yes |
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | OCI compartment ID | `string` | `""` | no |
| <a name="input_credential_id"></a> [credential\_id](#input\_credential\_id) | ID of Alkira credential used for AWS authentication | `string` | n/a | yes |
| <a name="input_custom_prefixes"></a> [custom\_prefixes](#input\_custom\_prefixes) | List of custom prefix-lists for routing (prefix-lists must already exist in Alkira CSX) | `list(string)` | `[]` | no |
| <a name="input_cxp"></a> [cxp](#input\_cxp) | Alkira CXP to create connector in | `string` | n/a | yes |
| <a name="input_group"></a> [group](#input\_group) | Name of Alkira group to add connector to | `string` | n/a | yes |
| <a name="input_is_custom"></a> [is\_custom](#input\_is\_custom) | Controls if custom prefixes are used for routing from cloud network to CXP; This value automatically changes to 'true' if custom\_prefixes list is set | `bool` | `false` | no |
| <a name="input_is_enabled"></a> [is\_enabled](#input\_is\_enabled) | Controls if connector is enabled | `bool` | `true` | no |
| <a name="input_is_primary"></a> [is\_primary](#input\_is\_primary) | Controls if connector is primary | `bool` | `true` | no |
| <a name="input_oci_vcn"></a> [oci\_vcn](#input\_oci\_vcn) | Name of the OCI VCN to be onboarded; Also used for OCI Connector name | `string` | n/a | yes |
| <a name="input_segment_id"></a> [segment\_id](#input\_segment\_id) | ID of Alkira segment to add connector to | `string` | n/a | yes |
| <a name="input_size"></a> [size](#input\_size) | Size of Alkira connector; SMALL, MEDIUM, LARGE | `string` | `"SMALL"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_billing_tag_id"></a> [billing\_tag\_id](#output\_billing\_tag\_id) | OCI Connector billing tag |
| <a name="output_cxp"></a> [cxp](#output\_cxp) | OCI Connector CXP |
| <a name="output_group"></a> [group](#output\_group) | OCI Connector group |
| <a name="output_segment_id"></a> [segment\_id](#output\_segment\_id) | OCI Connector segment |
| <a name="output_size"></a> [size](#output\_size) | OCI Connector size |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->