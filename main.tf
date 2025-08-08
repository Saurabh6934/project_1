resource "azurerm_resource_group" "rg1" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_storage_account" "strg1" {
  depends_on = [ azurerm_resource_group.rg1 ]
  name                     = var.strg_name
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}




