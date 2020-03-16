terragrunt = {
  dependencies {
    paths = [
      "../resource_group"
    ]
  }

  terraform {
    source = "git::git@github.com:teamdigitale/devita-infra-tf-modules.git//azurerm_key_vault"
  }

  # Include all settings from the root terraform.tfvars file
  include = {
    path = "${find_in_parent_folders()}"
  }
}

# Azure keyvault module variables
policy_object_list_map      = [
  # Luca Prete
  {
    object_id               = "c4209094-18fe-4902-840c-bd1242c8293a",
    key_permissions         = "create,delete,update,get,list",
    secret_permissions      = "set,delete,get,list",
    certificate_permissions = "create,delete,update,get,list,import"
  },
  # Alessandro Sebastiani
  {
    object_id               = "f2228f98-c7c6-4fc8-aaff-0cc835eb6f33",
    key_permissions         = "create,delete,update,get,list",
    secret_permissions      = "set,delete,get,list",
    certificate_permissions = "create,delete,update,get,list,import"
  },
  # Leonardo Favario
  {
    object_id               = "713aeed7-b6e5-4586-b299-d2ee0532d70b",
    key_permissions         = "create,delete,update,get,list",
    secret_permissions      = "set,delete,get,list",
    certificate_permissions = "create,delete,update,get,list,import"
  }
]
