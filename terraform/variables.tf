# Nombre del grupo de recursos
variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
  type        = string
  default     = "rg-terraform-casopractico2"
}

# Ubicación de los recursos en Azure
variable "location" {
  description = "Ubicación de los recursos en Azure"
  type        = string
  default     = "West Europe"
}

# Nombre de la red virtual
variable "vnet_name" {
  description = "Nombre de la red virtual"
  type        = string
  default     = "vnet-casopractico2"
}

# Nombre de la subred
variable "subnet_name" {
  description = "Nombre de la subred"
  type        = string
  default     = "subnet-casopractico2"
}

# Nombre de la IP pública
variable "public_ip_name" {
  description = "Nombre de la IP pública"
  type        = string
  default     = "public-ip-casopractico2"
}

# Nombre de la interfaz de red
variable "nic_name" {
  description = "Nombre de la interfaz de red"
  type        = string
  default     = "nic-casopractico2"
}

# Nombre de la máquina virtual
variable "vm_name" {
  description = "Nombre de la máquina virtual"
  type        = string
  default     = "casopractico2-vm"
}

# Nombre de usuario para acceder a la máquina virtual
variable "admin_username" {
  description = "Nombre de usuario para acceder a la máquina virtual"
  type        = string
  default     = "azureuser"
}

# Contraseña para acceder a la máquina virtual
variable "ssh_public_key_path" {
  description = "Ruta del archivo de clave pública SSH"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

# Nombre del clúster de Kubernetes
variable "aks_cluster_name" {
  description = "Nombre del clúster de Kubernetes"
  type        = string
  default     = "aks-cluster-casopractico2"
}

# Nombre de la identidad asignada al clúster de Kubernetes
variable "aks_identity_name" {
  description = "Nombre de la identidad asignada al clúster de Kubernetes"
  type        = string
  default     = "aks-identity-casopractico2"
}

# Nombre del registro de imágenes
variable "acr_name" {
  description = "Nombre del registro de imagenes"
  type        = string
  default     = "diegodevopscp2"
}

# Nombre del scope map
variable "scope_map_name" {
  description = "Nombre del scope map"
  type        = string
  default     = "casopractico2-scope-map"
}

# Nombre del token
variable "token_name" {
  description = "Nombre del token"
  type        = string
  default     = "casopractico2-token"
}