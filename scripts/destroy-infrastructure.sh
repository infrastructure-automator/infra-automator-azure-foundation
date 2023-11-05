#!/bin/bash

############################
## Destroy Infrastructure ##
############################

{
    echo; echo ${FORMAT_HIGHLIGHT_1}"Terraform Initialize"${FORMAT_NORMAL}
    terraform -chdir=${TERRAFORM_CONFIGURATION_FILE} init \
        -backend-config="subscription_id=${statefile_foundation_subscription_id}" \
        -backend-config="resource_group_name=${statefile_foundation_resource_group_name}" \
        -backend-config="storage_account_name=${statefile_foundation_storage_account_name}" \
        -backend-config="container_name=${statefile_foundation_container_name}" \
        -backend-config="key=${statefile_key}"

} && {
    echo; echo ${FORMAT_HIGHLIGHT_1}"Terraform Destroy Plan"${FORMAT_NORMAL}
    terraform -chdir=${TERRAFORM_CONFIGURATION_FILE} plan -destroy \
        -out ${terraform_deploy_plan_file_name} \
        -var-file="variables.tfvars"

} && {
    echo; echo ${FORMAT_HIGHLIGHT_1}"Terraform Apply"${FORMAT_NORMAL}
    terraform -chdir=${TERRAFORM_CONFIGURATION_FILE} apply ${terraform_deploy_plan_file_name}

} && {
    echo; echo ${FORMAT_HIGHLIGHT_1}"Remove Terraform Plan File"${FORMAT_NORMAL}
    rm ${TERRAFORM_CONFIGURATION_FILE}/${terraform_deploy_plan_file_name}

}
