variable "clientname" {
  type        = string
  description = "Name of the client"
  default     = "myclient"
}

variable "env" {
  type        = string
  description = "Environment name"
  default     = "dev"
}

variable "location" {
  type    = string
  default = "East US"
}

variable "keyvault_secret_name" {
  type        = string
  description = "Name of the Key Vault secret"
  default     = "Auth0"
}


