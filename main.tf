provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "case1-resource-group"
  location = "East US"
}
