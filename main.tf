terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.26.0"
    }
  }
}

provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "example" {
name = "${var.varrg["name"]}"   # "manch"  # manch-rg >>> ${var.varrg["name"]}
location = "${var.varrg["location"]}"
}


# resource "azurerm_virtual_network" "example" {
#   name                = "example-network"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   address_space       = ["10.0.0.0/16"]
# }

# resource "azurerm_subnet" "my_subnet" {
#   name                 = "man-subnet"
#   resource_group_name  = azurerm_resource_group.example.name
#   virtual_network_name = azurerm_virtual_network.example.name
#   address_prefixes     = ["10.0.1.0/24"]
# }

# resource "azurerm_storage_account" "st" {
#   name = "hkbkjhsknvbksnb86799"
#   resource_group_name = azurerm_resource_group.example.name
#     location = azurerm_resource_group.example.location
#   account_tier = "Standard" 
#   account_replication_type = "LRS"


# }

# resource "azurerm_storage_container" "example" {
#   name                  = "example-container"
#   storage_account_name  = azurerm_storage_account.st.name
#   container_access_type = "private"
# } 

# resource "azurerm_public_ip" "example" {
#   name                = "example-public-ip"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name

#   allocation_method = "Static"
# } 

