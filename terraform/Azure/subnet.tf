resource "azurerm_subnet" "tsubnet" {
  name                 = "terraform-internal-subnet"
  resource_group_name  = azurerm_resource_group.trg.name
  virtual_network_name = azurerm_virtual_network.tvnet.name
  address_prefixes     = ["10.0.2.0/24"]
}