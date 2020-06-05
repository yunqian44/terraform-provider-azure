# terraform {
#   required_version = ">= 0.12"
#   backend "azurerm" {
#     storage_account_name = "${var.storageaccount_name}"
#     container_name       = "${var.container_name}"
#     key                  = "${var.container_key}"
#     access_key           = "${var.access_key}"
#     features {}
#   }
# }
provider "azurerm" {
  version = "~>2.0.0"
  features {}

  subscription_id = "9fb11b51-9734-459f-9262-611921729aed"
  client_id       = "d6ae9674-892d-408c-ae51-24f0e4e68cad"
  client_secret   = "33d7a90f-2ad7-4493-8cc0-232f50d0c8a9"
  tenant_id       = "79461cf6-3db1-48ff-8018-6b87bd3d5b35"
}
resource "azurerm_resource_group" "dev" {
  name     = "${var.resource_group_name}"
  location = "${var.location}"
}

resource "azurerm_app_service_plan" "dev" {
  name                = "${var.azurerm_app_service_plan_name}"
  location            = "${azurerm_resource_group.dev.location}"
  resource_group_name = "${azurerm_resource_group.dev.name}"

  sku {
    tier = "${var.app_service_plan_sku.tier}"
    size = "${var.app_service_plan_sku.size}"
  }
}

resource "azurerm_app_service" "dev" {
  name                = "${var.azurerm_app_service_name}"
  location            = "${azurerm_resource_group.dev.location}"
  resource_group_name = "${azurerm_resource_group.dev.name}"
  app_service_plan_id = "${azurerm_app_service_plan.dev.id}"

}
