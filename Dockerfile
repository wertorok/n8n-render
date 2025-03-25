FROM node:18

# Устанавливаем n8n глобально как root
RUN npm install -g n8n

# Переменные окружения
ENV N8N_API_KEY=mysecretkey2025
ENV N8N_BASIC_AUTH_ACTIVE=false
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0

# Запуск как node для безопасности
USER node

# Запускаем n8n
CMD ["n8n", "start"]