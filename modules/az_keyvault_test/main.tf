data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "keyvault" {
  name                        = var.vault_name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  sku_name                    = "standard"
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  enabled_for_disk_encryption = true
  enabled_for_deployment      = true
  enabled_for_template_deployment = true
  enable_rbac_authorization   = true

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get",
      "List",
      "Sign",
    ]

    secret_permissions = [
      "Get",
      "List",
    ]
  }
}

resource "azurerm_key_vault_secret" "keyvault_secret" {
  name         = "secret-sauce"
  value        = base64encode(local_file.secret_file.content)
  key_vault_id = azurerm_key_vault.keyvault.id
  content_type = "text/plain"
}
