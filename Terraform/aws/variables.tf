# Region & Network
variable "aws_region" {
  description = "Region AWS"
  type        = string
  default     = "ap-southeast-1"
}

# Instance
variable "instance_type" {
  description = "Tipe EC2 instance (2 vCPU / 2GB RAM)"
  type        = string
  default     = "t3.small"
}

variable "ami_id" {
  description = "AMI Ubuntu 24.04 LTS"
  type        = string
}

variable "root_volume_size" {
  description = "Ukuran root volume dalam GB"
  type        = number
  default     = 20
}

# SSH
variable "public_key_path" {
  description = "Path ke SSH public key"
  type        = string
  default     = "~/.ssh/id_ed25519.pub"
}
