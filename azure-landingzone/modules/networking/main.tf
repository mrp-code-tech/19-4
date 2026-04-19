resource "azurerm_resource_group" "hub_rg" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_virtual_network" "hub_vnet" {
  name                = "hub-vnet"
  location            = var.location
  resource_group_name = azurerm_resource_group.hub_rg.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "default" {
  name                 = "default"
  resource_group_name  = azurerm_resource_group.hub_rg.name
  virtual_network_name = azurerm_virtual_network.hub_vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}