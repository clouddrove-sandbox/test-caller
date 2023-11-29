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

module "vnet" {
  source = "../../"

  name                = "app"
  environment         = "test"
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
  address_space       = "10.0.0.0/16"
}
