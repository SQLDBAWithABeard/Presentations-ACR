variable "presentation" {
    description = "The name of the presentation - used for tagging Azure resources so I know what they belong to"
    default = "__Presentation__"
}

variable "ResourceGroupName" {
  description = "The Prefix used for all resources in this example"
  default     = "__ResourceGroupName__"
}

variable "location" {
  description = "The Azure Region in which the resources in this example should exist"
  default     = "__location__"
}

variable "ACRName" {
  description = "The name of the Virtual Network"
  default     = "__ACRName__"
}

variable "Sku" {
  description = "The Sku for the ACR - "
  default     = "__Sku__"
}

