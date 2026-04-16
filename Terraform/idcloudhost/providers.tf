terraform {
  required_providers {
    idcloudhost = {
      version = "0.2.1"
      source  = "bapung/idcloudhost"
    }
  }
}

provider "idcloudhost" {
  auth_token = var.auth_token
}
