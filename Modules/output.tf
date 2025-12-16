output "vm_id" {
  description = "ID of the VM"
  value       = azurerm_windows_virtual_machine.vm.id
}

output "vm_private_ip" {
  description = "Private IP of the VM"
  value       = azurerm_network_interface.vm_nic.ip_configuration[0].private_ip_address
}