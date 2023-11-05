terraform {
  required_version = "~>1.6.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.78.0"
    }
  }

  backend "azurerm" {
  }
}

provider "azurerm" {
  tenant_id       = var.AZURE_TENANT_ID
  subscription_id = var.AZURE_SUBSCRIPTION_ID
  client_id       = var.SERVICE_PRINCIPAL_APPLICATION_ID
  client_secret   = var.SERVICE_PRINCIPAL_SECRET

  features {}
}
