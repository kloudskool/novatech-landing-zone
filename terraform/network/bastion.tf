resource "azurerm_bastion_host" "hub" {
  name                = "bas-hub-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
}
