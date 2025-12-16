# provider.tf

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"   # Adjust version as needed
    }
  }

  # Optional: configure remote backend for state storage
  # backend "azurerm" {
  #   resource_group_name  = "tfstate-rg"
  #   storage_account_name = "tfstateaccount"
  #   container_name       = "tfstate"
  #   key                  = "terraform.tfstate"
  # }
}

provider "azurerm" {
  features {
    # Enables resource-specific features
    resource_group {
      prevent_deletion_if_contains_resources = true
    }
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }

  # Optional: specify subscription and tenant explicitly
  # subscription_id = "00000000-0000-0000-0000-000000000000"
  # tenant_id       = "00000000-0000-0000-0000-000000000000"
}