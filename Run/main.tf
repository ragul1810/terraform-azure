module "vm" {
  source              = "../terraform-azure/Modules"
  resource_group_name = "rg-prod"
  location            = "eastus"
  vm_name             = "prod-vm01"
  vm_size             = "Standard_D2s_v3"
  admin_username      = "azureadmin"
  admin_password      = "ragul"
  subnet_id           = azurerm_subnet.prod.id
  tags = {
    environment = "production"
    owner       = "Sri"
  }
}
