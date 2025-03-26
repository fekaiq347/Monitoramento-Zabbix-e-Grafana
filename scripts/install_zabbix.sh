#!/bin/bash
# Script para instalar o Zabbix 7.0 no Ubuntu 22.04

# Atualiza a lista de pacotes e o sistema
echo "Atualizando o sistema..."
sudo apt update && sudo apt upgrade -y

# Instala pacotes necessários
echo "Instalando pacotes essenciais..."
sudo apt install -y wget gnupg2 software-properties-common

# Baixa o pacote de release do Zabbix
echo "Baixando o pacote do Zabbix..."
wget https://repo.zabbix.com/zabbix/7.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_7.0-1+ubuntu22.04_all.deb

# Instala o pacote baixado
echo "Instalando o pacote do Zabbix..."
sudo dpkg -i zabbix-release_7.0-1+ubuntu22.04_all.deb

# Atualiza os repositórios para incluir o Zabbix
echo "Atualizando os repositórios..."
sudo apt update

# Instala o Zabbix Server, Frontend e Agent
echo "Instalando Zabbix Server, Frontend e Agent..."
sudo apt install -y zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-agent

echo "Instalação do Zabbix concluída!"

