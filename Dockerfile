FROM n8nio/n8n:latest

# Установка переменных окружения
ARG N8N_API_KEY
ARG N8N_HOST
ARG N8N_ENCRYPTION_KEY

ENV N8N_API_KEY=${N8N_API_KEY}
ENV N8N_HOST=${N8N_HOST}
ENV N8N_ENCRYPTION_KEY=${N8N_ENCRYPTION_KEY}
ENV N8N_BASIC_AUTH_ACTIVE=false
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://${N8N_HOST}/
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Проверка наличия n8n
RUN echo "Checking n8n location:" && which n8n || echo "n8n not found in PATH" && ls -la /usr/local/bin/

CMD ["/usr/local/bin/n8n", "start"]