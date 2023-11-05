resource "azurerm_resource_group" "foundation" {
  name     = var.foundation_resource_group_name
  location = var.azure_location
  tags     = var.azure_tags
}

resource "azurerm_dns_zone" "foundation" {
  name                = var.dns_domain
  resource_group_name = azurerm_resource_group.foundation.name
  tags                = var.azure_tags
}

resource "azurerm_container_registry" "foundation" {
  name                          = var.container_registry_name
  resource_group_name           = azurerm_resource_group.foundation.name
  location                      = azurerm_resource_group.foundation.location
  sku                           = var.container_registry_sku
  anonymous_pull_enabled        = true
  public_network_access_enabled = true
  tags                          = var.azure_tags
}
