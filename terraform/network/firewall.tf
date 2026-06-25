resource "azurerm_firewall_policy" "hub" {
  name                = "afwp-hub-${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
}

resource "azurerm_firewall_policy_rule_collection_group" "base" {
  name               = "rcg-base"
  firewall_policy_id = azurerm_firewall_policy.hub.id
  priority           = 100
}
