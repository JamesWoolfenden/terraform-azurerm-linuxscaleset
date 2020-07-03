variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map
}


variable "subnet" {
  type        = map
  description = "(optional) describe your variable"
  default = {
    name                 = "backend"
    virtual_network_name = "production"
    resource_group_name  = "networking"
  }
}

variable "resource_group" {
}

variable "azurerm_subnet" {
  description = "(optional) describe your variable"
}

variable "admin_username" {
  type    = string
  default = "adminuser"
}

variable "source_image_reference" {
  type = map
  default = {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}

variable "scaleset_name" {
  type    = string
  default = "example-vmss"
}

variable "os_disk" {
  type = map
  default = {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }
}

variable "sku" {
  type    = string
  default = "Standard_F2"
}

variable "instance_count" {
  type    = number
  default = 1
}
