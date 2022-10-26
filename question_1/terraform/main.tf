terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.0"
    }
  }
  required_version = ">= 1.0.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "sre" {
  name     = var.azure_rg_name
  location = var.azure_rg_location
  tags     = var.azure_tags
}

resource "azurerm_storage_account" "sre" {
  name                     = var.azure_sacc_name 
  location                 = azurerm_resource_group.sre.location
  resource_group_name      = azurerm_resource_group.sre.name
  account_tier             = var.azure_sacc_tier
  account_replication_type = var.azure_sacc_replication_type
  access_tier              = var.azure_sacc_access_tier
  tags                     = var.azure_tags
}

resource "azurerm_storage_container" "sre" {
  name                  = var.azure_sc_name
  container_access_type = var.azure_sc_access_type
  storage_account_name  = azurerm_storage_account.sre.name
}