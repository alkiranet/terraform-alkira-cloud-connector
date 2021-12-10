# Onboard Cloud Network to Alkira

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_alkira"></a> [alkira](#requirement\_alkira) | >= 0.7.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alkira"></a> [alkira](#provider\_alkira) | >= 0.7.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_onboard_aws_vpc"></a> [onboard\_aws\_vpc](#module\_onboard\_aws\_vpc) | ./modules/aws-vpc | n/a |

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
| <a name="input_aws_vpc"></a> [aws\_vpc](#input\_aws\_vpc) | Name of the AWS VPC to be onboarded; Also used for AWS Connector name | `string` | n/a | yes |
| <a name="input_billing_tag"></a> [billing\_tag](#input\_billing\_tag) | Alkira billing tag applied to connector | `string` | n/a | yes |
| <a name="input_credential"></a> [credential](#input\_credential) | Alkira credentail used for AWS authentication | `string` | n/a | yes |
| <a name="input_custom_prefixes"></a> [custom\_prefixes](#input\_custom\_prefixes) | List of custom prefix-lists for routing (prefix-lists must already exist in Alkira CSX) | `list(string)` | `[]` | no |
| <a name="input_cxp"></a> [cxp](#input\_cxp) | Alkira CXP to create connector in | `string` | n/a | yes |
| <a name="input_group"></a> [group](#input\_group) | Alkira Group to add connector to | `string` | n/a | yes |
| <a name="input_onboard_subnets"></a> [onboard\_subnets](#input\_onboard\_subnets) | List of subnet names to onboard in lieu of entire network | `list(string)` | `[]` | no |
| <a name="input_segment"></a> [segment](#input\_segment) | Alkira segment to add connector to | `string` | n/a | yes |
| <a name="input_size"></a> [size](#input\_size) | Alkira connector size | `string` | `"SMALL"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_connector"></a> [aws\_connector](#output\_aws\_connector) | The Alkira AWS Connector resource being created |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->