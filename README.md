# Onboard cloud networks to Alkira
This Terraform module makes it easy to onboard existing _cloud networks_ to [Alkira](https://alkira.com) by name.

## Example Usage
```hcl
module "onboard_aws_vpc" {
  source          = "alkiranet/cloud-connector/alkira"

  aws_vpc         = "aws-vpc-east"
  
  cxp             = "US-EAST-2"
  segment         = "corporate"
  group           = "nonprod"
  billing_tag     = "cloud"
  credential      = "aws-auth"

}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_alkira"></a> [alkira](#requirement\_alkira) | >= 0.8.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alkira"></a> [alkira](#provider\_alkira) | >= 0.8.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_onboard_aws_vpc"></a> [onboard\_aws\_vpc](#module\_onboard\_aws\_vpc) | ./modules/aws-vpc | n/a |
| <a name="module_onboard_azure_vnet"></a> [onboard\_azure\_vnet](#module\_onboard\_azure\_vnet) | ./modules/azure-vnet | n/a |
| <a name="module_onboard_gcp_vpc"></a> [onboard\_gcp\_vpc](#module\_onboard\_gcp\_vpc) | ./modules/gcp-vpc | n/a |
| <a name="module_onboard_oci_vcn"></a> [onboard\_oci\_vcn](#module\_onboard\_oci\_vcn) | ./modules/oci-vcn | n/a |

## Resources

| Name | Type |
|------|------|
| [alkira_billing_tag.tag](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/data-sources/billing_tag) | data source |
| [alkira_credential.credential](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/data-sources/credential) | data source |
| [alkira_group.group](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/data-sources/group) | data source |
| [alkira_segment.segment](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/data-sources/segment) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_vpc"></a> [aws\_vpc](#input\_aws\_vpc) | Name of the AWS VPC to be onboarded; Also used for AWS Connector name | `string` | `""` | no |
| <a name="input_azure_vnet"></a> [azure\_vnet](#input\_azure\_vnet) | Name of the Azure VNet to be onboarded; Also used for Azure Connector name | `string` | `""` | no |
| <a name="input_billing_tag"></a> [billing\_tag](#input\_billing\_tag) | Alkira billing tag applied to connector | `string` | n/a | yes |
| <a name="input_cloud_region"></a> [cloud\_region](#input\_cloud\_region) | Name of the cloud region to use for onboarding | `string` | `""` | no |
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | OCI compartment ID | `string` | `""` | no |
| <a name="input_credential"></a> [credential](#input\_credential) | Alkira credential used for AWS authentication | `string` | n/a | yes |
| <a name="input_custom_prefixes"></a> [custom\_prefixes](#input\_custom\_prefixes) | List of custom prefix-lists for routing (prefix-lists must already exist in Alkira CSX) | `list(string)` | `[]` | no |
| <a name="input_cxp"></a> [cxp](#input\_cxp) | Alkira CXP to create connector in | `string` | n/a | yes |
| <a name="input_gcp_vpc"></a> [gcp\_vpc](#input\_gcp\_vpc) | Name of the GCP VPC to be onboarded; Also used for GCP Connector name | `string` | `""` | no |
| <a name="input_group"></a> [group](#input\_group) | Alkira Group to add connector to | `string` | n/a | yes |
| <a name="input_oci_vcn"></a> [oci\_vcn](#input\_oci\_vcn) | Name of the OCI VCN to be onboarded; Also used for OCI Connector name | `string` | `""` | no |
| <a name="input_onboard_subnets"></a> [onboard\_subnets](#input\_onboard\_subnets) | List of subnet names to onboard in lieu of entire network | `list(string)` | `[]` | no |
| <a name="input_project"></a> [project](#input\_project) | Name of the GCP project | `string` | `""` | no |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | Name of the Azure VNet to be onboarded; Also used for Azure Connector name | `string` | `""` | no |
| <a name="input_segment"></a> [segment](#input\_segment) | Alkira segment to add connector to | `string` | n/a | yes |
| <a name="input_size"></a> [size](#input\_size) | Alkira connector size | `string` | `"SMALL"` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | Azure subscription ID | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_connector"></a> [aws\_connector](#output\_aws\_connector) | AWS Connector resource being created |
| <a name="output_azure_connector"></a> [azure\_connector](#output\_azure\_connector) | Azure Connector resource being created |
| <a name="output_gcp_connector"></a> [gcp\_connector](#output\_gcp\_connector) | The GCP Connector resource being created |
| <a name="output_oci_connector"></a> [oci\_connector](#output\_oci\_connector) | The OCI Connector resource being created |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->