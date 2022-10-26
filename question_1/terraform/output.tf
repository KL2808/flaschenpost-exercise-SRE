output "storage_account_id" {
    value = azurerm_storage_account.sre.id
}

output "storage_primary_access_key" {
    value = azurerm_storage_account.sre.primary_access_key
    sensitive = true
}

output "storage_primary_connection_string" {
    value = azurerm_storage_account.sre.primary_connection_string
    sensitive = true
}

output "storage_container_id" {
    value = azurerm_storage_container.sre.id
}
