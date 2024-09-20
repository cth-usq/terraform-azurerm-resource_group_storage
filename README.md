# terraform-azurerm-resource_group_storage
# Azure Resource Group and Storage Account Terraform Module

This module creates an Azure Resource Group and a Storage Account.

## Usage

```hcl
module "resource_group_storage" {
  source  = "your-github-username/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "my-resource-group"
  location             = "East US"
  storage_account_name = "mystorageaccount"
}
```
Inputs
| Name                 | Description                                | Type   | Default | Required |
|----------------------|--------------------------------------------|--------|---------|----------|
| `resource_group_name` | Name of the resource group                 | string | n/a     | yes      |
| `location`            | Azure region where resources will be created | string | n/a     | yes      |
| `storage_account_name`| Name of the storage account                | string | n/a     | yes      |

Outputs
| Name                | Description                       |
|---------------------|-----------------------------------|
| `resource_group_id`  | The ID of the resource group      |
| `storage_account_id` | The ID of the storage account     |
