module "az_keyvault" {
  source           = "./modules/az_keyvault_test"

  location         = var.location
  vault_name = "${var.clientname}-${var.env}-keyvault"
  

}

module "keyvault_secret" {
  source         = "./modules/az_keyvault_test"
  
  
  vault_name = "${var.clientname}-${var.env}-keyvault"

 
  
}
