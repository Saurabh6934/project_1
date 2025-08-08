terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "gauravrg"
    storage_account_name = "stggaurav777"
    container_name       = "gauravcontainer"
    key                  = "myskp.tfstate"
  }

}

provider "azurerm" {
  features{}
  subscription_id = "9a19641f-a0da-455d-9b90-51dc0d0cdfee"
}