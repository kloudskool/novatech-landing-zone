resource "azurerm_firewall_policy" "hub" {
  name                = "afwp-hub-${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
}
