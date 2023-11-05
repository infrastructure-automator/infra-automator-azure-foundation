#!/bin/bash

## Terminal Cosmetics
source scripts/terminal-cosmetics.sh

## Verifiy Prereq
source scripts/verify-prereqs.sh

## Load Global Variables
source scripts/load-global-variables.sh

## Setup Service Principal Credentials
source scripts/initialize-service-principal.sh

## Output Instructions
echo; echo -e ${FORMAT_HIGHLIGHT_1}"To Terraform Deploy, run:\n    ${FORMAT_HIGHLIGHT_2}source scripts/deploy-infrastructure.sh"
echo; echo -e ${FORMAT_HIGHLIGHT_1}"To Terraform Destroy, run:\n    ${FORMAT_HIGHLIGHT_2}source scripts/destroy-infrastructure.sh"
echo;