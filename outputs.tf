output "resource_group_id" {
  value       = azurerm_resource_group.rg.id
  description = "The ID of the resource group"
}

output "storage_account_id" {
  value       = azurerm_storage_account.sa.id
  description = "The ID of the storage account"
}
