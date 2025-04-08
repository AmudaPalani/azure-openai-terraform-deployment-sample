variable "region" {
  type    = string
  default = "centralus"
}

variable "chat_model_name" {
  type    = string
  default = "gpt-4o"
}

variable "chat_model_version" {
  type    = string
  default = "2024-08-06"
}

variable "scale_type" {
  type    = string
  description = "values: GlobalStandard, Standard"
  default = "GlobalStandard"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "container_name" {
  description = "The name of the container"
  type        = string
}

variable "key" {
  description = "The name of the state file"
  type        = string
}
