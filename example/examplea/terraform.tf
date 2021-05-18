terraform {
  required_providers {
    azurerm = {
      version = "2.59.0"
      source  = "hashicorp/azurerm"
    }
    local = { version = "2.0.0"
    source = "hashicorp/local" }
    tls = { version = "2.0.0"
    source = "hashicorp/tls" }
  }
  required_version = ">=0.14.8"
}
