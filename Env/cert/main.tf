module "resource_group" {
  source   = "../../modules/azurerm_resource_group"
  name     = "resource_group_lb-cert"
  location = "Switzerland North"
}