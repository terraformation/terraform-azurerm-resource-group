module "naming" {
  source         = "terraformation/naming/local"
  version        = "0.0.0"
  naming_options = local.naming_options
}

locals {
  naming_options = merge({
    resource_name = "rg"
  }, var.naming_options)
}


resource "azurerm_resource_group" "default" {
  location = var.location
  name     = module.naming.rendered
  tags     = var.tags
}
