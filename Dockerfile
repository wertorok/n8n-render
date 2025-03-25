FROM n8nio/n8n:latest

# Переключаемся на root для установки
USER root
RUN npm install -g n8n

# Возвращаемся к пользователю node для безопасности
USER node

# Переменные окружения
ENV N8N_API_KEY=mysecretkey2025
ENV N8N_BASIC_AUTH_ACTIVE=false
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0

# Запуск
CMD ["n8n", "start"]