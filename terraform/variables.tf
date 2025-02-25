variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
  type        = string
  default     = "rg-terraform-casopractico2"
}

variable "location" {
  description = "Ubicación de los recursos en Azure"
  type        = string
  default     = "West Europe"
}

variable "vnet_name" {
  description = "Nombre de la red virtual"
  type        = string
  default     = "vnet-casopractico2"
}

variable "subnet_name" {
  description = "Nombre de la subred"
  type        = string
  default     = "subnet-casopractico2"
}

variable "public_ip_name" {
  description = "Nombre de la IP pública"
  type        = string
  default     = "public-ip-casopractico2"
}

variable "nic_name" {
  description = "Nombre de la interfaz de red"
  type        = string
  default     = "nic-casopractico2"
}

variable "vm_name" {
  description = "Nombre de la máquina virtual"
  type        = string
  default     = "casopractico2-vm"
}

variable "admin_username" {
  description = "Nombre de usuario para acceder a la máquina virtual"
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key_path" {
  description = "Ruta del archivo de clave pública SSH"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}