variable "AZURE_TENANT_ID" {
  type      = string
  sensitive = true
}

variable "AZURE_SUBSCRIPTION_ID" {
  type      = string
  sensitive = true
}

variable "SERVICE_PRINCIPAL_APPLICATION_ID" {
  type      = string
  sensitive = true
}

variable "SERVICE_PRINCIPAL_SECRET" {
  type      = string
  sensitive = true
}

variable "azure_tags" {
  type = object({
    managed_by = string
    purpose    = string
  })
}

variable "azure_location" { type = string }

variable "foundation_resource_group_name" { type = string }

variable "tfstate_storage_account_name" { type = string }
variable "tfstate_storage_account_tier" { type = string }
variable "tfstate_storage_account_type" { type = string }
variable "tfstate_container_name" { type = string }

variable "dns_domain" { type = string }

variable "container_registry_name" { type = string }
variable "container_registry_sku" {
  type    = string
  default = "Basic"
}
