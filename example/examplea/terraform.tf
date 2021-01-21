terraform {
  required_providers {
    azurerm = {
      version = "2.43.0"
      source  = "hashicorp/azurerm"
    }
    local= {  version = "2.0.0"
      source  = "hashicorp/local" }
tls= {  version = "2.0.0"
      source  = "hashicorp/tls"}
  }
}
