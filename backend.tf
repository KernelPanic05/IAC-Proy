terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "RG-IAC"      # change if different
    storage_account_name = "iacstatustf" # MUST be globally unique
    container_name       = "tfstate"
    key                  = "iac.terraform.tfstate"
  }
}