provider "aws" {
  region = var.region
}

resource "aws_instance" "citadel" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.citadel-key.key_name
  user_data     = file("/root/terraform-challenges/project-citadel/install-nginx.sh")
  
  tags = {
    Name = "citadel"
  }
}

resource "aws_key_pair" "citadel-key" {
  key_name   = "citadel-key"
  public_key = file("~/.ssh/id_rsa.pub")  # Assurez-vous d'avoir une clé SSH générée
}
