terraform {
  required_providers {
    azurerm = {
      version = "3.70.0"
      source  = "hashicorp/azurerm"
    }
    local = { version = "2.4.0"
    source = "hashicorp/local" }
    tls = { version = "4.0.4"
    source = "hashicorp/tls" }
  }
  required_version = ">= 1.3.0"
}
