# Elastic IP: apps
resource "aws_eip" "apps_eip" {
  instance = aws_instance.apps.id
  domain   = "vpc"

  tags = {
    Name = "apps-eip"
  }
}

# Elastic IP: nginx
resource "aws_eip" "nginx_eip" {
  instance = aws_instance.nginx.id
  domain   = "vpc"

  tags = {
    Name = "nginx-eip"
  }
}

# Elastic IP: database
resource "aws_eip" "database_eip" {
  instance = aws_instance.database.id
  domain   = "vpc"

  tags = {
    Name = "database-eip"
  }
}

# Elastic IP: monitoring
resource "aws_eip" "monitoring_eip" {
  instance = aws_instance.monitoring.id
  domain   = "vpc"

  tags = {
    Name = "monitoring-eip"
  }
}

# Elastic IP: sonarqube
resource "aws_eip" "sonarqube_eip" {
  instance = aws_instance.sonarqube.id
  domain   = "vpc"

  tags = {
    Name = "sonarqube-eip"
  }
}

# Elastic IP: k3s-master
resource "aws_eip" "master_eip" {
  instance = aws_instance.master.id
  domain   = "vpc"

  tags = {
    Name = "master-eip"
  }
}

# Elastic IP: k3s-worker
resource "aws_eip" "worker_eip" {
  instance = aws_instance.worker.id
  domain   = "vpc"

  tags = {
    Name = "worker-eip"
  }
}
