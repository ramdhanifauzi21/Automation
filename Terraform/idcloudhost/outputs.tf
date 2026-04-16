output "fauzi_app_ip" {
  description = "Static IP fauzi-app"
  value       = idcloudhost_floating_ip.fauzi_app_ip.address
}

output "fauzi_gateway_ip" {
  description = "Static IP fauzi-gateway"
  value       = idcloudhost_floating_ip.fauzi_gateway_ip.address
}

output "ssh_fauzi_app" {
  description = "Perintah SSH ke fauzi-app"
  value       = "ssh fauzi@${idcloudhost_floating_ip.fauzi_app_ip.address}"
}

output "ssh_fauzi_gateway" {
  description = "Perintah SSH ke fauzi-gateway"
  value       = "ssh fauzi@${idcloudhost_floating_ip.fauzi_gateway_ip.address}"
}
