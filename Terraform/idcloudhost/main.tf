# VPC / Private Network
#resource "idcloudhost_private_network" "vpc_main" {
#  name = "fauzi-vpc"
#}

# Floating IP (Static IP)
resource "idcloudhost_floating_ip" "fauzi_app_ip" {
  name               = "fauzi-app-ip"
  billing_account_id = var.billing_account_id
}

resource "idcloudhost_floating_ip" "fauzi_gateway_ip" {
  name               = "fauzi-gateway-ip"
  billing_account_id = var.billing_account_id
}

# VM fauzi-app
resource "idcloudhost_vm" "fauzi_app" {
  name                 = "fauzi-app"
  os_name              = "ubuntu"
  os_version           = "24.04"
  disks                = 20
  vcpu                 = 2
  memory               = 2048
  username             = "fauzi"
  initial_password     = var.password
  billing_account_id   = var.billing_account_id
  backup               = false
#  private_network_uuid = idcloudhost_private_network.vpc_main.network_uuid

  depends_on = [
#    idcloudhost_private_network.vpc_main,
    idcloudhost_floating_ip.fauzi_app_ip
  ]
}

# VM fauzi-gateway
resource "idcloudhost_vm" "fauzi_gateway" {
  name                 = "fauzi-gateway"
  os_name              = "ubuntu"
  os_version           = "24.04"
  disks                = 20
  vcpu                 = 2
  memory               = 2048
  username             = "fauzi"
  initial_password     = var.password
  billing_account_id   = var.billing_account_id
  backup               = false
#  private_network_uuid = idcloudhost_private_network.vpc_main.network_uuid

  depends_on = [
#    idcloudhost_private_network.vpc_main,
    idcloudhost_floating_ip.fauzi_gateway_ip
  ]
}
