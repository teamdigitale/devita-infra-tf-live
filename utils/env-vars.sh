#!/usr/bin/env bash

# Variables and common functions file
# 
# The file contains a list of variables and common functions
# used loaded by all other scripts before their execution.
# 
# The .env.example file should be copied to .env file and
# customized with the own values.
# 

# Generic variables
SUBSCRIPTION='d30b533f-c88b-45ec-867e-8e321aa0b03f'
RG_INFRA_NAME='devita-infra-rg'
LOCATION='westeurope'
VAULT_INFRA_NAME='devita-vault'

# Terraform variables
TERRAFORM_STORAGE_ACCOUNT_NAME='devitatf'
TERRAFORM_CONTAINER_NAME='devita-tf'
TERRAFORM_VAULT_STORAGE_ACCOUNT_KEY='devita-tf-storage'

err() {
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $@" 2>&1| tee -a infra.log
}

log_date() {
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $@" >&1 | tee -a infra.log
}

run_cmd() {
  "$@" 2>&1| tee -a infra.log

  ret=$?
  if [[ $ret -eq 0 ]]; then
    log_date "Successfully ran [ $@ ]"
  else
    err "Error: Command [ $@ ] returned $ret"
    exit $ret
  fi
}
