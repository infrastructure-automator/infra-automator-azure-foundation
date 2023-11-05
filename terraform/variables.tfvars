azure_location = "eastus"

azure_tags = {
  managed_by = "Terraform"
  purpose    = "Foundation"
}

foundation_resource_group_name = "rg-foundation"

tfstate_storage_account_name = "infraautomatortfstate"
tfstate_storage_account_tier = "Standard"
tfstate_storage_account_type = "LRS"
tfstate_container_name       = "tfstate"

dns_domain = "infrastructureautomator.com"

container_registry_name = "foundationregistry"
container_registry_sku  = "Premium"
