# Azure provider version
terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0, < 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

provider "random" {}

data "azurerm_client_config" "current" {}

provider "azurerm" {
  features {}
  use_oidc = true
}

  # Update this block with the location of your terraform state file
  backend "azurerm" {
    resource_group_name  = var.storage_rg_name
    storage_account_name = var.storage_account_name
    container_name       = var.storage_container_name
    key                  = var.storage_key

    use_oidc             = true
  }
}
