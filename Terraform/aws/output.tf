# Public IP (Elastic IP) — semua server
output "apps_public_ip" {
  description = "Public IP server apps"
  value       = aws_eip.apps_eip.public_ip
}

output "nginx_public_ip" {
  description = "Public IP server nginx"
  value       = aws_eip.nginx_eip.public_ip
}

output "database_public_ip" {
  description = "Public IP server database"
  value       = aws_eip.database_eip.public_ip
}

output "monitoring_public_ip" {
  description = "Public IP server monitoring"
  value       = aws_eip.monitoring_eip.public_ip
}

output "sonarqube_public_ip" {
  description = "Public IP server sonarqube"
  value       = aws_eip.sonarqube_eip.public_ip
}

output "master_public_ip" {
  description = "Public IP server k3s-master"
  value       = aws_eip.master_eip.public_ip
}

output "worker_public_ip" {
  description = "Public IP server k3s-worker"
  value       = aws_eip.worker_eip.public_ip
}

# Private IP — semua server 
output "apps_private_ip" {
  description = "Private IP server apps"
  value       = aws_instance.apps.private_ip
}

output "nginx_private_ip" {
  description = "Private IP server nginx"
  value       = aws_instance.nginx.private_ip
}

output "database_private_ip" {
  description = "Private IP server database"
  value       = aws_instance.database.private_ip
}

output "monitoring_private_ip" {
  description = "Private IP server monitoring"
  value       = aws_instance.monitoring.private_ip
}

output "sonarqube_private_ip" {
  description = "Private IP server sonarqube"
  value       = aws_instance.sonarqube.private_ip
}

output "master_private_ip" {
  description = "Private IP server k3s-master"
  value       = aws_instance.master.private_ip
}

output "worker_private_ip" {
  description = "Private IP server k3s-worker"
  value       = aws_instance.worker.private_ip
}

# SSH Command — semua server 
output "ssh_commands" {
  description = "Perintah SSH untuk semua server"
  value = {
    apps        = "ssh -i ~/.ssh/id_rsa ubuntu@${aws_eip.apps_eip.public_ip}"
    nginx       = "ssh -i ~/.ssh/id_rsa ubuntu@${aws_eip.nginx_eip.public_ip}"
    database    = "ssh -i ~/.ssh/id_rsa ubuntu@${aws_eip.database_eip.public_ip}"
    monitoring  = "ssh -i ~/.ssh/id_rsa ubuntu@${aws_eip.monitoring_eip.public_ip}"
    sonarqube   = "ssh -i ~/.ssh/id_rsa ubuntu@${aws_eip.sonarqube_eip.public_ip}"
    k3s_control = "ssh -i ~/.ssh/id_rsa ubuntu@${aws_eip.master_eip.public_ip}"
    k3s_worker  = "ssh -i ~/.ssh/id_rsa ubuntu@${aws_eip.worker_eip.public_ip}"
  }
}

# Network Info
output "vpc_id" {
  description = "ID VPC"
  value       = aws_vpc.main_vpc.id
}

output "subnet_id" {
  description = "ID Subnet"
  value       = aws_subnet.public_subnet.id
}
