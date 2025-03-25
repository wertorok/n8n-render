FROM node:18-alpine

# Установка n8n глобально
RUN npm install -g n8n

# Установка рабочей директории
WORKDIR /home/node
RUN mkdir -p /home/node/.n8n && chown node:node /home/node/.n8n

# Переменные окружения
ARG N8N_API_KEY
ARG N8N_HOST
ARG N8N_ENCRYPTION_KEY

ENV N8N_API_KEY=${N8N_API_KEY}
ENV N8N_HOST=${N8N_HOST}
ENV N8N_ENCRYPTION_KEY=${N8N_ENCRYPTION_KEY}
ENV N8N_BASIC_AUTH_ACTIVE=false
ENV N8N_AUTH_EXCLUDE_ENDPOINTS=""
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://${N8N_HOST}/
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV N8N_API_AUTH_ENABLED=true  # Явно включаем API-авторизацию

# Переключение на пользователя node
USER node

# Запуск n8n
CMD ["n8n", "start"]