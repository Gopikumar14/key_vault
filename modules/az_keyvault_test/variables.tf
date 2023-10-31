variable "location" {
  type    = string
  default = "East US"
}

variable "resource_group_name" {
  type    = string
  default = "Gk-RG"
}

variable "vault_name" {
  type    = string
  default = "examplekeyvault"

}
/*

variable "secret_path" {
  type    = string
  default = "${path.module}/modules/az_keyvault_test/secret.txt"
}*/