# Use a imagem oficial do Zabbix
FROM zabbix/zabbix-server-pgsql:latest

# Defina variáveis de ambiente necessárias
ENV DB_SERVER_HOST=zabbix-postgres
ENV POSTGRES_DB=zabbix
ENV POSTGRES_USER=zabbix
ENV POSTGRES_PASSWORD=zabbix

# Exponha a porta do Zabbix
EXPOSE 10051

# Comando para iniciar o servidor Zabbix
CMD ["docker-entrypoint.sh"]
