terragrunt = {
  terraform {
    source = "git::git@github.com:teamdigitale/devita-infra-tf-modules.git//azuread_group"
  }

  # Include all settings from the root terraform.tfvars file
  include = {
    path = "${find_in_parent_folders()}"
  }
}

# Azure AD group module variables
group_name_suffix                 = "k8s-admins"
group_members_user_principal_name = [
  "a.sebastiani_teamdigitale.governo.it#EXT#@ttdsite.onmicrosoft.com",
  "andrea_teamdigitale.governo.it#EXT#@ttdsite.onmicrosoft.com",
  "leonardo_teamdigitale.governo.it#EXT#@ttdsite.onmicrosoft.com",
  "fabio.bonelli_teamdigitale.governo.it#EXT#@ttdsite.onmicrosoft.com"
]
