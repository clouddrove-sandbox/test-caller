<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=2.90.0 |
| <a name="requirement_databricks"></a> [databricks](#requirement\_databricks) | 1.14.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=2.90.0 |
| <a name="provider_databricks"></a> [databricks](#provider\_databricks) | 1.14.3 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | clouddrove/labels/azure | 1.0.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_databricks_workspace.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/databricks_workspace) | resource |
| [databricks_cluster.cluster](https://registry.terraform.io/providers/databricks/databricks/1.14.3/docs/resources/cluster) | resource |
| [databricks_node_type.smallest](https://registry.terraform.io/providers/databricks/databricks/1.14.3/docs/data-sources/node_type) | data source |
| [databricks_spark_version.latest_lts](https://registry.terraform.io/providers/databricks/databricks/1.14.3/docs/data-sources/spark_version) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_autotermination_minutes"></a> [autotermination\_minutes](#input\_autotermination\_minutes) | Set a minutes to auto terminate cluster if it's unhealthy. | `number` | n/a | yes |
| <a name="input_cluster_enable"></a> [cluster\_enable](#input\_cluster\_enable) | Set to false to prevent the databricks cluster from creating it's resources. | `bool` | `false` | no |
| <a name="input_cluster_profile"></a> [cluster\_profile](#input\_cluster\_profile) | The profile that Cluster will be contain. Possible values are 'singleNode' and 'multiNode' | `string` | `""` | no |
| <a name="input_enable"></a> [enable](#input\_enable) | Set to false to prevent the module from creating any resources. | `bool` | `false` | no |
| <a name="input_enable_autoscale"></a> [enable\_autoscale](#input\_enable\_autoscale) | Set to false to not enable the Autoscale feature from the cluster. | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `""` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,] . | `list(any)` | `[]` | no |
| <a name="input_location"></a> [location](#input\_location) | The location/region where the virtual network is created. Changing this forces a new resource to be created. | `string` | `""` | no |
| <a name="input_managed_resource_group_name"></a> [managed\_resource\_group\_name](#input\_managed\_resource\_group\_name) | Managed Resource Group name to create Resource group by provided name. | `string` | `""` | no |
| <a name="input_managedby"></a> [managedby](#input\_managedby) | Managed By e.g. Clouddrove , Anmol Nagpal | `string` | `""` | no |
| <a name="input_max_workers"></a> [max\_workers](#input\_max\_workers) | Set a Ammount of maximum workers that needs to be created among with Databricks Cluster. | `number` | n/a | yes |
| <a name="input_min_workers"></a> [min\_workers](#input\_min\_workers) | Set a Ammount of minimum workers that needs to be created among with Databricks Cluster. | `number` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name  (e.g. `app` or `cluster`). | `string` | `""` | no |
| <a name="input_network_security_group_rules_required"></a> [network\_security\_group\_rules\_required](#input\_network\_security\_group\_rules\_required) | Does the data plane (clusters) to control plane communication happen over private link endpoint only or publicly? Possible values AllRules, NoAzureDatabricksRules or NoAzureServiceRules. Required when public\_network\_access\_enabled is set to false. | `string` | `""` | no |
| <a name="input_no_public_ip"></a> [no\_public\_ip](#input\_no\_public\_ip) | Select true to disble public IP. | `string` | `""` | no |
| <a name="input_num_workers"></a> [num\_workers](#input\_num\_workers) | Set a Ammount of workers that needs to be created among with Databricks Cluster. | `number` | `0` | no |
| <a name="input_private_subnet_name"></a> [private\_subnet\_name](#input\_private\_subnet\_name) | Private Subnet Name to attach with databricks. | `string` | `""` | no |
| <a name="input_private_subnet_network_security_group_association_id"></a> [private\_subnet\_network\_security\_group\_association\_id](#input\_private\_subnet\_network\_security\_group\_association\_id) | Private subnet Network security group association ID of the Virtual Network to attach with databricks. | `string` | `""` | no |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Set to false to disable public Network access to the databricks. | `bool` | n/a | yes |
| <a name="input_public_subnet_name"></a> [public\_subnet\_name](#input\_public\_subnet\_name) | Public Subnet Name to attach with databricks. | `string` | `""` | no |
| <a name="input_public_subnet_network_security_group_association_id"></a> [public\_subnet\_network\_security\_group\_association\_id](#input\_public\_subnet\_network\_security\_group\_association\_id) | Public subnet Network security group association ID of the Virtual Network to attach with databricks. | `string` | `""` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Terraform current module repo | `string` | `""` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created. | `string` | `""` | no |
| <a name="input_sku"></a> [sku](#input\_sku) | The sku to use for the Databricks Workspace. Possible values are standard, premium, or trial. | `string` | `""` | no |
| <a name="input_spark_version"></a> [spark\_version](#input\_spark\_version) | Enter the Spark version to to create the Databricks's Cluster. | `string` | `null` | no |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | Storage account name to attach with databricks. | `string` | `""` | no |
| <a name="input_virtual_network_id"></a> [virtual\_network\_id](#input\_virtual\_network\_id) | Id of the Virtual Network to attach with databricks. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Specifies the resource id of the Workspace. |
<!-- END_TF_DOCS -->