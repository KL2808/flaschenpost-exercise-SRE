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
  name     = "sre-challenge-flashenpost"
  location = "West Europe"
  tags = {
    "department" = "SRE"
  }
}

resource "azurerm_storage_account" "sre" {
  # name                     = "srechallengeforflaschenpost" # This name is too long (max length 24 chars) 
  name                     = "srechallengeflaschenpost" 
  location                 = azurerm_resource_group.sre.location
  resource_group_name      = azurerm_resource_group.sre.name
  account_tier             = "Standard"
  account_replication_type = "LRS"  
  access_tier              = "Hot"
  tags = {
    "department" = "SRE"
  }
}

resource "azurerm_storage_container" "sre" {
  name                  = "sre"
  container_access_type = "private"
  storage_account_name  = azurerm_storage_account.sre.name
}