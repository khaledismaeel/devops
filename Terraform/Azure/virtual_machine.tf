resource "azurerm_linux_virtual_machine" "tvm" {
  name                = "terraform-virtual-machine"
  resource_group_name = azurerm_resource_group.trg.name
  location            = azurerm_resource_group.trg.location
  size                = "Standard_B1s"
  admin_username      = "khaledismaeel"
  network_interface_ids = [
    azurerm_network_interface.tnic.id,
  ]

  admin_ssh_key {
    username   = "khaledismaeel"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDLW/xmDZ7P660B6OVxb7moaFKZP44II7Y5MuAliGm7ddZcJ86MLtPkk8dcDYWr4FFgIPoLG41lGSQ8z4d6GUkF1ndop9nvLwa749Nvzz570+Qq9jZKU1tJHhcsekgvXxkLcfcVhbFNyyqdMKduv/GVWcp8rknSvco2N1IjIqrWCSnvwGAZPoKfilZZmOVlRdWL3YI+B2IuxWF9Fo9UBch85LUAWe9ooEurcHC4oKoQtiQqBANRuCMf2MLXGBxVmI+softP+jQr89ASZAamO0euTxaEC77j4IaQ4N2Tp1cJfMx08aelu/tITGF1d05PgnSCBh41zGc194ilgomgI0kBa/2N1/ydpo1KKjdeglR3tSeZGRc1NwwxSs7nKB6rpZb3sihZNWezQ1Zfx+99tC7ypAh8EJcbNZ/c9/CwZN/R8wvD47UELitBMeNzTq+RFj2MR0GttA2ZkrmWs1NZT5psQzXGGXNLwVWVVn+lArjeXdd+aCbMWAf8aT8jNaOyQx0="
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}