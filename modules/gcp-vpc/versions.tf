terraform {
  required_version = ">= 0.12.29"

  required_providers {

    alkira = {
      source  = "alkiranet/alkira"
      version = ">= 0.7.4"
    }

    google = {
      source  = "hashicorp/google"
      version = "< 5.0, >= 2.12"
    }

  }
}