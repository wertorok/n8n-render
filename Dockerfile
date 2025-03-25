FROM node:18-alpine

# Установка n8n глобально
RUN npm install -g n8n

# Установка рабочей директории
WORKDIR /home/node
RUN mkdir -p /home/node/.n8n && chown node:node /home/node/.n8n

# Переменные окружения
ENV N8N_API_KEY=mysecretkey2025
ENV N8N_HOST=n8n-render-production-c2d4.up.railway.app
ENV N8N_ENCRYPTION_KEY=YTYyZDAyM2ItN2NiZS00YTE3LTg3OTYtZjQwYzY1OTE5OWE0
ENV N8N_BASIC_AUTH_ACTIVE=false
ENV N8N_AUTH_EXCLUDE_ENDPOINTS=""
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://n8n-render-production-c2d4.up.railway.app/
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV N8N_API_AUTH_ENABLED=true
ENV N8N_RUNNERS_ENABLED=true

# Переключение на пользователя node
USER node

# Запуск n8n с отладкой
CMD ["/bin/sh", "-c", "echo 'Runtime N8N_API_KEY: $N8N_API_KEY' && n8n start"]