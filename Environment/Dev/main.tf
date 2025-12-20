module "rg" {
  source = "../../Modules/azurerm_resourcegroup"
  rgg    = var.resource_group_name
}

module "vnet" {
  source      = "../../Modules/azurerm_networking"
  depends_on  = [module.rg]
  virtual_network =   var.vnet_name
  
}

module "pip" {
  source     = "../../Modules/azurerm_pip"
  depends_on = [module.rg]
  pip_name =   var.public_ip
}

module "vm" {
  source     = "../../Modules/azurerm_compute"
  depends_on = [module.vnet, module.pip]
  vms        = var.vm_name
}
