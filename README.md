# Terraform AWS Citadel Infrastructure

Ce projet utilise Terraform pour déployer une infrastructure cloud automatisée sur AWS, comprenant une instance Citadel avec Nginx et une configuration SSH sécurisée.

## Architecture

L'infrastructure se compose des éléments suivants :
- Instance AWS EC2 (citadel) avec Nginx installé
- Configuration d'une paire de clés SSH pour l'accès sécurisé
- Allocation d'une adresse IP Elastic pour un accès stable
- Script d'automation pour l'installation et la configuration de Nginx

## Prérequis

- Terraform v1.0.0+
- Compte AWS et AWS CLI configuré
- Connaissance basique de Terraform et AWS

## Structure du projet

```
terraform-aws-citadel-infra/
├── main.tf                 # Configuration principale Terraform
├── variables.tf            # Définition des variables
├── outputs.tf              # Sorties Terraform
├── scripts/
│   └── install-nginx.sh    # Script d'installation de Nginx
└── README.md               # Documentation du projet
```

## Variables

| Nom | Description | Type | Valeur par défaut |
|-----|-------------|------|-----------------|
| ami | ID de l'AMI à utiliser | string | "ami-06178cf087598769c" |
| region | Région AWS | string | "eu-west-2" |
| instance_type | Type d'instance EC2 | string | "m5.large" |

## Déploiement

1. Clonez ce repository
   ```
   git clone https://github.com/votre-username/terraform-aws-citadel-infra.git
   cd terraform-aws-citadel-infra
   ```

2. Initialisez Terraform
   ```
   terraform init
   ```

3. Prévisualisez les changements
   ```
   terraform plan
   ```

4. Appliquez la configuration
   ```
   terraform apply
   ```

5. Pour détruire l'infrastructure
   ```
   terraform destroy
   ```

## Sécurité

- L'accès SSH est sécurisé par une paire de clés dédiée
- Assurez-vous de bien protéger le fichier de clé privée
- Limitez l'accès au serveur via les groupes de sécurité AWS

