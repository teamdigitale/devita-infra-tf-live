# Creates a Kubernetes Cluster through AKS using the Kubenet CNI.
# For more info look at the README.md file of the module.

terragrunt = {
  dependencies {
    paths = [
      "../log_analytics_workspace"
    ]
  }

  terraform {
    source = "git::git@github.com:teamdigitale/devita-infra-tf-modules.git//azurerm_container_group_es"
  }

  # Include all settings from the root terraform.tfvars file
  include = {
    path = "${find_in_parent_folders()}"
  }
}

# Azure container service specific variables
container_group_name_suffix                       = "es"
log_analytics_workspace_name                      = "log-analytics-workspace-01"
storage_account_name_suffix                       = "esconfig"
storage_account_share_name_suffix                 = "es-config"
