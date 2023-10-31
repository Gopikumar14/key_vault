resource "random_password" "keyvault_secret" {
  length           = 64  # Adjust the length as needed
  special          = true
  override_special = "_%@"
}

resource "local_file" "secret_file" {
  filename = "output.tf"  # Corrected filename
  content  = random_password.keyvault_secret.result
}
