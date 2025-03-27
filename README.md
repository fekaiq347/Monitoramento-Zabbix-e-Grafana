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
│   └── instalar_zabbix.sh             # Script de instalação automatizada (se presente)
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

## Pré-requisitos

- Zabbix Server e Agent instalados e funcionando.
- Grafana com o **plugin do Zabbix** configurado.
- Host com os itens necessários configurados para coleta de dados.

---

## Observações

- O dashboard está configurado para métricas comuns, mas pode ser adaptado conforme o template do host ou nome dos itens utilizados no seu ambiente Zabbix.
