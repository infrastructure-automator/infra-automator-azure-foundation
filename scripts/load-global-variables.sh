#!/bin/bash

###########################
## Load Global Variables ##
###########################

export SERVICE_PRINCIPAL_CREDENTIALS_FILE="credentials/foundation-azure-service-principal-credentials.json"
export TERRAFORM_CONFIGURATION_FILE="terraform"

export AZURE_SUBSCRIPTION_ID=$(az account show --query 'id' -o tsv)
export AZURE_TENANT_ID=$(az account show --query 'tenantId' -o tsv)

export terraform_deploy_plan_file_name="deploy.tfplan"
export terraform_destroy_plan_file_name="destroy.tfplan"

export statefile_foundation_subscription_id="4f049e70-36a3-4218-bb22-72216a7f3241"
export statefile_foundation_resource_group_name="rg-foundation"
export statefile_foundation_storage_account_name="infraautomatortfstate"
export statefile_foundation_container_name="tfstate"
export statefile_key="foundation.tfstate"
