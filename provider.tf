terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "ravi_demo"
    storage_account_name = "ravistorage3" # अपना स्टोरेज अकाउंट नाम दें
    container_name       = "ravicontainer"
    key                  = "terraform.tfstate"
  }
  }

provider "azurerm" {
  features {}
  subscription_id = "84382787-1367-4937-befb-9757f44087ef"
}