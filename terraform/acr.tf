# Se crea un registro de contenedores en Azure, deshabilitamos la opción de administrador ya que solo queremos utilizarlo con el token y establecemos el nivel de SKU en Standard.
resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Standard"
  admin_enabled       = false
}