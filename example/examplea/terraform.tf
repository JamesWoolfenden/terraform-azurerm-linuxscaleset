terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.71.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.8.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.2.1"
    }
  }
  required_version = ">= 1.3.0"
}
