provider "azurerm" {
  features {}
}
terraform {
  backend "azurerm" {
    resource_group_name  = "test"
    storage_account_name = "testingdrfit"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    use_oidc             = true
  }
}

module "resource_group" {
  source  = "clouddrove/resource-group/azure"
  version = "1.0.1"

  name        = "app-13"
  environment = "test"
  label_order = ["environment", "name", ]
  location    = "North Europe"
}