provider "azurerm" {
features {}
}
 
# Resource Group
resource "azurerm_resource_group" "rg" {
name = "tf-jenkins-rg"
location = "East US"
}
# Storage Account
resource "azurerm_storage_account" "storage" {
name = "tfjenkinsstoreeee01"
resource_group_name = azurerm_resource_group.rg.name
location = azurerm_resource_group.rg.location
account_tier = "Standard"
account_replication_type = "LRS"
}
 
# Blob Container
resource "azurerm_storage_container" "blob" {
name = "mycontainerrrr"
storage_account_name = azurerm_storage_account.storage.name
container_access_type = "private"
}
