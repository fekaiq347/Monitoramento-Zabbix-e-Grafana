#!/bin/bash
# Script para instalar o Grafana no Ubuntu

# Atualiza a lista de pacotes e atualiza o sistema
echo "Atualizando o sistema..."
sudo apt update && sudo apt upgrade -y

# Instala pacotes essenciais
echo "Instalando software-properties-common..."
sudo apt install -y software-properties-common

# Adiciona a chave GPG do Grafana
echo "Adicionando a chave GPG do Grafana..."
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -

# Adiciona o repositório do Grafana
echo "Adicionando o repositório do Grafana..."
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee /etc/apt/sources.list.d/grafana.list

# Atualiza os repositórios e instala o Grafana
echo "Atualizando os repositórios..."
sudo apt update
echo "Instalando o Grafana..."
sudo apt install -y grafana

# Inicia e habilita o serviço do Grafana
echo "Iniciando e habilitando o serviço do Grafana..."
sudo systemctl start grafana-server
sudo systemctl enable grafana-server

echo "Instalação do Grafana concluída!"

