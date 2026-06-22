# ─────────────────────────────────────────
# EC2 Instance: apps
# ─────────────────────────────────────────
resource "aws_instance" "apps" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.apps_sg.id]
  key_name               = aws_key_pair.main_key.key_name

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = "gp3"
  }

  tags = {
    Name = "apps-server"
  }
}

# ─────────────────────────────────────────
# EC2 Instance: nginx
# ─────────────────────────────────────────
resource "aws_instance" "nginx" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.nginx_sg.id]
  key_name               = aws_key_pair.main_key.key_name

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = "gp3"
  }

  tags = {
    Name = "nginx-server"
  }
}

# ─────────────────────────────────────────
# EC2 Instance: database
# ─────────────────────────────────────────
resource "aws_instance" "database" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.database_sg.id]
  key_name               = aws_key_pair.main_key.key_name

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = "gp3"
  }

  tags = {
    Name = "database-server"
  }
}

# ─────────────────────────────────────────
# EC2 Instance: monitoring
# ─────────────────────────────────────────
resource "aws_instance" "monitoring" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.monitoring_sg.id]
  key_name               = aws_key_pair.main_key.key_name

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = "gp3"
  }

  tags = {
    Name = "monitoring-server"
  }
}

# ─────────────────────────────────────────
# EC2 Instance: sonarqube
# ─────────────────────────────────────────
resource "aws_instance" "sonarqube" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.sonarqube_sg.id]
  key_name               = aws_key_pair.main_key.key_name

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = "gp3"
  }

  tags = {
    Name = "sonarqube-server"
  }
}

# ─────────────────────────────────────────
# EC2 Instance: k3s-master
# ─────────────────────────────────────────
resource "aws_instance" "master" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.master_sg.id]
  key_name               = aws_key_pair.main_key.key_name

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = "gp3"
  }

  tags = {
    Name = "master-server"
  }
}

# ─────────────────────────────────────────
# EC2 Instance: k3s-worker
# ─────────────────────────────────────────
resource "aws_instance" "worker" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.worker_sg.id]
  key_name               = aws_key_pair.main_key.key_name

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = "gp3"
  }

  tags = {
    Name = "worker-server"
  }
}
