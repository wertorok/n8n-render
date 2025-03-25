FROM n8nio/n8n:latest

# Установка переменных окружения через аргументы
ARG N8N_API_KEY
ARG N8N_HOST
ARG N8N_ENCRYPTION_KEY

# Настройка окружения
ENV N8N_API_KEY=${N8N_API_KEY}
ENV N8N_HOST=${N8N_HOST}
ENV N8N_ENCRYPTION_KEY=${N8N_ENCRYPTION_KEY}
ENV N8N_BASIC_AUTH_ACTIVE=false
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://${N8N_HOST}/

# Запуск n8n
CMD ["n8n", "start"]