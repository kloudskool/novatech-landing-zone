resource "azurerm_subscription_policy_assignment" "allowed_locations" {
  name                 = "allowed-locations"
  subscription_id      = var.subscription_id
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e56962a6-4747-49cd-b67b-bf8b01975c4c"
}

resource "azurerm_subscription_policy_assignment" "require_tags" {
  name                 = "require-cost-centre-tag"
  subscription_id      = var.subscription_id
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/871b6d14-10aa-478d-b590-94f262ecfa99"
}

resource "azurerm_subscription_policy_assignment" "deny_public_ip" {
  name                 = "deny-public-ip"
  subscription_id      = var.subscription_id
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/6c112d4e-5bc7-47ae-a041-ea2d9dccd749"
}
