# Infrastructure Automator Azure Foundation

This repository demonstrates creating an Azure Storage Account, an Azure DNS Zone, and an Azure Container Registry

## Prerequisites

Before running the deployment script, ensure you have the following tools installed on your machine:

- **Azure CLI**
- **jq** (JSON query)
- **Terraform**

## Steps

1. **Setup:** From the root of the repository, Run: 
    ```bash
    source run.sh
    ```

1. **Terraform Deploy:** Run
    ```bash
    source scripts/deploy-infrastructure
    ```

1. **Terraform Destroy:** Run
    ```bash
    source scripts/destroy-infrastructure.sh
    ```

## Features
1. Running the setup command of `source run.sh` will:
    - Configure colored bash output.
    - Verify that all prerequisite software is installed.
    - Verify a valid current az login or prompt the user to login.
    - Configure a Service Principal with Contribute access on the current Azure Subscription.
    - Display commands to Deploy and Destroy Infrastructure.

1. Running the deploy command `source scripts/deploy-infrastructure.sh` will:
    - Perform **terraform init**.
    - Perform **terraform plan**.
    - Perform **terraform apply**.
    - Retrieve AKS Credentials from the new AKS Cluster.

1. Running the destroy command `source scripts/destroy-infrastructure.sh` will:
    - Perform **terraform init**.
    - Perform **terraform plan -destroy**.
    - Perform **terraform apply**.

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/infrastructure-automator/infra-automator-azure-foundation.git
   cd infra-automator-azure-foundation
1. Follow the steps outlined in the **"Steps"** section above.

## License
This project is licensed under the MIT License - see the `LICENSE` file for details.
