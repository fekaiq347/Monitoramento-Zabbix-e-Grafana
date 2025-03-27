# Monitoramento-Zabbix-e-Grafana

Este repositório contém uma solução de monitoramento baseada em **Zabbix** e **Grafana**, com foco na visualização de métricas essenciais como:

- **Available Memory (%)**
- **CPU Utilization**
- **Memory Utilization**

## Estrutura do Projeto

```
meu-projeto-zabbix-grafana/
├── grafana/
│   └── dashboard-zabbix.json          # Dashboard customizado para o Grafana
├── zabbix/
│   ├── zabbix_server.conf             # Configuração do servidor Zabbix
│   └── zabbix_agentd.conf             # Configuração do agente Zabbix (se aplicável)
├── scripts/
│   ├── instalar_zabbix.sh             # Script de instalação automatizada (se presente)
│   └── create_zabbix_db.sql           # Script SQL para criar o banco de dados do Zabbix
├── README.md                          # Documentação do projeto
└── .gitignore                         # Padrões de arquivos ignorados pelo Git
```

---

## Objetivo

O objetivo deste projeto é criar uma visualização clara e eficiente de recursos críticos do sistema monitorado por meio de um dashboard no Grafana conectado ao Zabbix.

As métricas monitoradas incluem:

- **Available Memory (%)**: porcentagem de memória RAM livre.
- **CPU Utilization**: percentual de uso da(s) CPU(s).
- **Memory Utilization**: uso da memória RAM total.

---

## Como Utilizar

### 1. Clone o Repositório

```bash
git clone https://github.com/seu-usuario/meu-projeto-zabbix-grafana.git
cd meu-projeto-zabbix-grafana
```

### 2. Execute o Script de Instalação

```bash
cd scripts
sudo bash instalar_zabbix.sh
```

 Certifique-se de revisar o script antes de executá-lo.

### 3. Configure o Zabbix

Copie os arquivos de configuração da pasta `zabbix/` para os diretórios correspondentes no servidor e no agente Zabbix.

### 4. Importe o Dashboard no Grafana

1. Acesse seu Grafana.
2. Vá até **Dashboards > Import**.
3. Importe o arquivo `grafana/dashboard-zabbix.json`.
4. Selecione a fonte de dados do Zabbix.

---

## Configuração do Banco de Dados (MariaDB)

Este projeto utiliza o MariaDB como backend para o Zabbix. Para configurar o banco, execute os seguintes passos:

### 1. Instale o MariaDB

```bash
sudo apt install -y mariadb-server
sudo systemctl start mariadb
sudo systemctl enable mariadb
```

### 2. Proteja a Instalação

```bash
sudo mysql_secure_installation
```

### 3. Crie o Banco de Dados e o Usuário

Você pode executar os comandos manualmente ou usar o script `create_zabbix_db.sql` disponível na pasta `scripts/`.

#### Opção 1 – Manualmente no terminal SQL:

```sql
CREATE DATABASE zabbix CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
CREATE USER 'zabbixuser'@'localhost' IDENTIFIED BY 'SUA_SENHA_AQUI';
GRANT ALL PRIVILEGES ON zabbix.* TO 'zabbixuser'@'localhost';
FLUSH PRIVILEGES;
```

#### Opção 2 – Usando o script SQL:

```bash
sudo mysql -u root -p < scripts/create_zabbix_db.sql
```

> **Atenção:** Substitua `SUA_SENHA_AQUI` por uma senha segura antes de executar o script.

---

## Boas Práticas

- **Sensibilidade de Dados:**  
  Jamais inclua senhas reais em repositórios públicos. Use placeholders como `SUA_SENHA_AQUI` e oriente os usuários a substituí-los adequadamente.

- **Referências Oficiais:**  
  - [Documentação do MariaDB](https://mariadb.com/kb/en/)
  - [Documentação do Zabbix](https://www.zabbix.com/documentation/current/manual)

---

## Pré-requisitos

- Zabbix Server e Agent instalados e funcionando.
- Grafana com o **plugin do Zabbix** configurado.
- Host com os itens necessários configurados para coleta de dados.
