resource "azurerm_user_assigned_identity" "pipeline" {
  name                = "id-pipeline-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
}
resource "azurerm_role_assignment" "pipeline_contributor" {
  scope                = var.subscription_scope
  role_definition_name = "Contributor"
  principal_id         = azurerm_user_assigned_identity.pipeline.principal_id
}
