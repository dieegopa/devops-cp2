output "vm_public_ip" {
  description = "Dirección IP pública de la VM"
  value       = azurerm_public_ip.pip.ip_address
}

output "token_name" {
  description = "Nombre del token"
  value       = azurerm_container_registry_token.token.name
}

output "token_username" {
  description = "Nombre de usuario del token"
  value       = azurerm_container_registry_token.token.id
}

output "token_password" {
  description = "Contraseña del token"
  value       = azurerm_container_registry_token_password.password.password1[0].value
  sensitive   = true
}