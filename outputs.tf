output "scale_set" {
  value     = azurerm_linux_virtual_machine_scale_set.linux
  sensitive = true
}
