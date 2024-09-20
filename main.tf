Copyterraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group_storage" {
  source  = "your-github-username/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "my-resource-group"
  location             = "East US"
  storage_account_name = "mystorageaccount"
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
