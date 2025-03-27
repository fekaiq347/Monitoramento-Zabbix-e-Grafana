-- Criação do banco de dados para o Zabbix com codificação adequada
CREATE DATABASE zabbix CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

-- Criação do usuário para o Zabbix com senha (substitua 'SUA_SENHA_AQUI' por uma senha forte)
CREATE USER 'zabbixuser'@'localhost' IDENTIFIED BY 'SUA_SENHA_AQUI';

-- Concessão de todos os privilégios no banco de dados zabbix para o usuário criado
GRANT ALL PRIVILEGES ON zabbix.* TO 'zabbixuser'@'localhost';

-- Aplicação das mudanças de privilégios
FLUSH PRIVILEGES;
