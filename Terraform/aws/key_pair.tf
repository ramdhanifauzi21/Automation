# Key Pair
resource "aws_key_pair" "main_key" {
  key_name   = "main-key"
  public_key = file(var.public_key_path)

  tags = {
    Name = "main-key"
  }
}
