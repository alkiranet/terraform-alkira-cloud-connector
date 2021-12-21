# Onboard GCP VPC

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.29 |
| <a name="requirement_alkira"></a> [alkira](#requirement\_alkira) | >= 0.7.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | < 5.0, >= 2.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alkira"></a> [alkira](#provider\_alkira) | >= 0.7.0 |
| <a name="provider_google"></a> [google](#provider\_google) | < 5.0, >= 2.12 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alkira_connector_gcp_vpc.connector](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/connector_gcp_vpc) | resource |
| [google_compute_network.gcp_vpc](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_tag_id"></a> [billing\_tag\_id](#input\_billing\_tag\_id) | ID of Alkira billing tag applied to connector | `string` | n/a | yes |
| <a name="input_cloud_region"></a> [cloud\_region](#input\_cloud\_region) | Name of cloud network region | `string` | n/a | yes |
| <a name="input_credential_id"></a> [credential\_id](#input\_credential\_id) | ID of Alkira credential used for Azure authentication | `string` | n/a | yes |
| <a name="input_cxp"></a> [cxp](#input\_cxp) | Alkira CXP to create connector in | `string` | n/a | yes |
| <a name="input_gcp_vpc"></a> [gcp\_vpc](#input\_gcp\_vpc) | Name of cloud network and Alkira connector | `string` | n/a | yes |
| <a name="input_group"></a> [group](#input\_group) | Name of Alkira group to add connector to | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Name of the GCP project | `string` | n/a | yes |
| <a name="input_segment_id"></a> [segment\_id](#input\_segment\_id) | ID of Alkira segment to add connector to | `string` | n/a | yes |
| <a name="input_size"></a> [size](#input\_size) | Size of Alkira connector; SMALL, MEDIUM, LARGE | `string` | `"SMALL"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_billing_tag_id"></a> [billing\_tag\_id](#output\_billing\_tag\_id) | GCP Connector billing tag |
| <a name="output_connector_id"></a> [connector\_id](#output\_connector\_id) | GCP Connector ID |
| <a name="output_cxp"></a> [cxp](#output\_cxp) | GCP Connector CXP |
| <a name="output_group"></a> [group](#output\_group) | GCP Connector group |
| <a name="output_segment_id"></a> [segment\_id](#output\_segment\_id) | GCP Connector segment |
| <a name="output_size"></a> [size](#output\_size) | GCP Connector size |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->