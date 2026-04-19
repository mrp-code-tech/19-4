resource "azurerm_management_group" "root" {
  display_name = var.root_name
}

resource "azurerm_management_group" "platform" {
  display_name               = "platform"
  parent_management_group_id = azurerm_management_group.root.id
}

resource "azurerm_management_group" "landingzones" {
  display_name               = "landingzones"
  parent_management_group_id = azurerm_management_group.root.id
}