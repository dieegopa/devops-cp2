output "vm_public_ip" {
  description = "Dirección IP pública de la VM"
  value       = azurerm_public_ip.pip.ip_address
}