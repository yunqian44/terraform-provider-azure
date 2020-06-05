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
    tier = "Free"
    size = "F1"
  }
}

variable "container_name" {
  default = "terraform"
}
variable "container_key" {
  default = "terraform.tfstate"
}









