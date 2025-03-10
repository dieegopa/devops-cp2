# Creamos un scope map para el ACR y los roles de lectura y escritura
resource "azurerm_container_registry_scope_map" "rsm" {
  name                    = var.scope_map_name
  container_registry_name = azurerm_container_registry.acr.name
  resource_group_name     = azurerm_resource_group.rg.name
  actions                 = ["repositories/*/content/read", "repositories/*/content/write", "repositories/*/metadata/read", "repositories/*/metadata/write"]
}