resource "azurerm_linux_virtual_machine_scale_set" "linux" {
  name                = var.scaleset_name
  resource_group_name = var.resource_group.name
  location            = var.resource_group.location
  sku                 = var.sku
  instances           = var.instance_count
  admin_username      = var.admin_username
  #obvious check.
  disable_password_authentication = true

  admin_ssh_key {
    username   = var.admin_username
    public_key = tls_private_key.new.public_key_pem
  }

  source_image_reference {
    publisher = var.source_image_reference["publisher"]
    offer     = var.source_image_reference["offer"]
    sku       = var.source_image_reference["sku"]
    version   = var.source_image_reference["version"]
  }

  os_disk {
    storage_account_type = var.os_disk["storage_account_type"]
    caching              = var.os_disk["caching"]
  }

  network_interface {
    name    = var.network_interface["name"]
    primary = var.network_interface["primary"]

    ip_configuration {
      name      = "internal"
      primary   = true
      subnet_id = var.azurerm_subnet.id
    }
  }
  tags = var.common_tags
}
