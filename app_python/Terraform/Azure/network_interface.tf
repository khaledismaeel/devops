resource "azurerm_network_interface" "tnic" {
  name                = "terraform-nic"
  location            = azurerm_resource_group.trg.location
  resource_group_name = azurerm_resource_group.trg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.tsubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.tpip.id
  }
}
