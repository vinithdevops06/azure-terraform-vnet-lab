resource "azurerm_resource_group" "network" {
  name     = "rg-vinith-network-001"
  location = "uksouth"
}

resource "azurerm_resource_group" "app" {
  name     = "rg-vinith-app-001"
  location = "uksouth"
}

resource "azurerm_virtual_network" "main" {
  name                = "vnet-vinith-lab-001"
  location            = azurerm_resource_group.network.location
  resource_group_name = azurerm_resource_group.network.name
  address_space       = ["10.10.0.0/16"]
}
