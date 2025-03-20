output "instance_id" {
  description = "ID de l'instance EC2"
  value       = aws_instance.citadel.id
}

output "public_ip" {
  description = "Adresse IP publique de l'instance"
  value       = aws_eip.eip.public_ip
}

output "ssh_command" {
  description = "Commande pour se connecter à l'instance via SSH"
  value       = "ssh -i ~/.ssh/id_rsa ubuntu@${aws_eip.eip.public_dns}"
}
