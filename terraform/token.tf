# Creamos un token que tenga acceso al ACR
resource "azurerm_container_registry_token" "token" {
  name                    = var.token_name
  container_registry_name = azurerm_container_registry.acr.name
  resource_group_name     = azurerm_resource_group.rg.name
  scope_map_id            = azurerm_container_registry_scope_map.rsm.id
}

# Creamos un password para el token
resource "azurerm_container_registry_token_password" "password" {
  container_registry_token_id = azurerm_container_registry_token.token.id
  password1 {
    expiry = "2123-01-01T00:00:00Z"
  }
}