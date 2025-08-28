# The Terraform Module
terraform {

  # The required tf version
  required_version = "~> 1"

  # Required providers
  required_providers {
    doppler = {
      source  = "DopplerHQ/doppler"
      version = "~> 1"
    }

    auth0 = {
      source  = "auth0/auth0"
      version = "~> 1"
    }
  }
}
