resource "azurerm_public_ip" "pip" {
    for_each = var.pip_name
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  allocation_method   = each.value.allocation_method
  sku                 = "Standard"
  ip_version          = "IPv4"
  domain_name_label   = each.value.name

  tags = {
    environment = "Development"
  }
}