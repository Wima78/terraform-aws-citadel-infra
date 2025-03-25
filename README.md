# Projet Citadel AWS avec Terraform

Ce dépôt contient l'infrastructure as code pour déployer une instance "Citadel" sur AWS avec Terraform. Le projet configure une machine EC2 avec Nginx, une IP Elastic et utilise le service de paires de clés SSH d'AWS pour l'accès sécurisé.

## Vue d'ensemble

Ce projet est conçu pour démontrer une configuration d'infrastructure AWS basique mais complète en utilisant Terraform. L'architecture comprend :

- Une instance EC2 nommée "Citadel"
- Nginx installé automatiquement via un script
- Une IP Elastic pour un accès permanent
- Une paire de clés SSH pour l'authentification

## Fichiers du projet

- `providers.tf` : Configuration du provider AWS et des endpoints
- `main.tf` : Définition de l'instance EC2
- `eip.tf` : Configuration de l'IP Elastic
- `variables.tf` : Définition des variables (AMI, région, type d'instance)
- `install-nginx.sh` : Script d'installation de Nginx

## Utilisation

1. Assurez-vous que Terraform est installé
2. Initialisez votre environnement Terraform :
   ```
   terraform init
   ```
3. Vérifiez le plan d'exécution :
   ```
   terraform plan
   ```
4. Appliquez la configuration :
   ```
   terraform apply
   ```

## Environnement

Ce projet est configuré pour fonctionner avec un émulateur AWS local écoutant sur le port 4566 (comme LocalStack). Pour l'utiliser avec AWS réel, vous devrez modifier la configuration du provider dans `providers.tf`.

## Remarque

Ce projet a été créé dans le cadre d'un challenge Terraform et utilise des chemins spécifiques à cet environnement pour les fichiers et les scripts.
