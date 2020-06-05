variable "location" {
  description = "location"
  default     = "East Asia"
}

variable "resource_group_name" {
  description = "name"
  default     = "WEBAPPTEST001"
}

variable "app_service_plan_sku" {
  type = "map"
  default = {
    tier = "Standard"
    size = "S1"
  }
}

variable "container_name" {
  default = "terraform"
}
variable "container_key" {
  default = "terraform.tfstate"
}

variable "access_key" {
  default = "__storagekey__"
}

variable "storageaccount_name" {
  description = "description"
  default = "__terraformstorageaccount__"
}

variable "azurerm_app_service_plan_name" {
  description = "description"
  default = "__appserviceplanname__"
}

variable "azurerm_app_service_name" {
  description = "description"
  default = "__appservicename__"
}









