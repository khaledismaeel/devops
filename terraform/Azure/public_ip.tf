resource "azurerm_public_ip" "tpip" {
  name                = "terraform-public-ip"
  resource_group_name = azurerm_resource_group.trg.name
  location            = azurerm_resource_group.trg.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}