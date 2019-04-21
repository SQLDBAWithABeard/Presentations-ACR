provider "azurerm" {
  version = "=1.24.0"
}

terraform {
  backend "azurerm" {
    key = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "presentation" {
  name     = "${var.ResourceGroupName}"
  location = "${var.location}"

  tags = {
    environment = "${var.presentation}"
  }
}

resource "azurerm_container_registry" "acr" {
  name                     = "${var.ACRName}"
  resource_group_name      = "${azurerm_resource_group.presentation.name}"
  location                 = "${azurerm_resource_group.presentation.location}"
  sku                      = "${var.Sku}"
  admin_enabled            = "False"
  }