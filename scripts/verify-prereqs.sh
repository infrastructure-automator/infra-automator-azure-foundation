#!/bin/bash

####################
## Verify Prereqs ##
####################

## Check commands to test
declare -a programs_to_check=(
    "jq"
    "terraform"
    "az"
)

function command_exists () {
    command -v "${1}" >/dev/null 2>&1
}

for target_program in ${programs_to_check[@]}; do
    if ! command_exists ${target_program}; then
        echo; echo "${target_program} is not installed.  Please install ${target_program} and re-run script"
    fi
done
