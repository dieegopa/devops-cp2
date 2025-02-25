resource "azurerm_user_assigned_identity" "aks_identity" {
  name                = var.aks_identity_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}