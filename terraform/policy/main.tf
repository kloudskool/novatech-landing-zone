resource "azurerm_subscription_policy_assignment" "allowed_locations" {
  name                 = "allowed-locations"
  subscription_id      = var.subscription_id
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e56962a6-4747-49cd-b67b-bf8b01975c4c"
}
