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
  # Update this block with the location of your terraform state file
  backend "azurerm" {
    resource_group_name  = "def_ai_rg"
    storage_account_name = "tfstate09192024"
    container_name       = "tfstate"
    key                  = "terraform.tfstate.azure.ai.iac"

    use_oidc             = true
  }

}

provider "random" {}

data "azurerm_client_config" "current" {}

provider "azurerm" {
  features {}
  use_oidc = true
}

