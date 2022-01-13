terraform {
  required_version = ">= 0.12.29"

  required_providers {

    alkira = {
      source  = "alkiranet/alkira"
      version = ">= 0.8.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.46.0"
    }

  }
}