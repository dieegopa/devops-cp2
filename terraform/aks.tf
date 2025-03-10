/*
  Cluster de AKS con un nodo de sistema
  Se establece la versión de Kubernetes 1.31.1
  Se establece un nodo de sistema con un tamaño Standard_D2_v2
  Se establece el plugin de red kubenet
  Se establece el SKU del balanceador de carga estándar
*/
resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_cluster_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = var.aks_cluster_name
  kubernetes_version  = "1.31.1"

  default_node_pool {
    name                = "system"
    node_count          = 1
    vm_size             = "Standard_D2_v2"
    type                = "VirtualMachineScaleSets"
    enable_auto_scaling = false
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    load_balancer_sku = "standard"
    network_plugin    = "kubenet"
  }
}