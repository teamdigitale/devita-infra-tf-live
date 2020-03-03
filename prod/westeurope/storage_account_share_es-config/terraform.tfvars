terragrunt = {
  dependencies {
    paths = [
      "../storage_account_es-config"
    ]
  }

  terraform {
    source = "git::git@github.com:teamdigitale/devita-infra-tf-modules.git//azurerm_storage_account_share"
  }

  # Include all settings from the root terraform.tfvars file
  include = {
    path = "${find_in_parent_folders()}"
  }
}

# Storage account share module related variables
storage_account_name              = "esconfig"
storage_account_share_name_suffix = "es-config"
azurerm_storage_share_quota       = "1"
