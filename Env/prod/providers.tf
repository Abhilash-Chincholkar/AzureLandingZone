terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.43.0"
    }
  }
    backend "azurerm" {
    resource_group_name  = "test-rg"
    storage_account_name = "terraformstgact7"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "terraform"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "terraform-prod.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
  features {}
  subscription_id = "0f48ce1f-16d2-42ba-8b4f-0bef1a58b563"
}