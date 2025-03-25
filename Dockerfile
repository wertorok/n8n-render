FROM node:18

# Устанавливаем n8n
RUN npm install -g n8n

# Очищаем старые конфиги (на всякий случай)
RUN rm -rf /home/node/.n8n || true

# Переменные окружения
ENV N8N_API_KEY=mysecretkey2025
ENV N8N_BASIC_AUTH_ACTIVE=false
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0

# Запуск как node
USER node

# Запускаем n8n
CMD ["n8n", "start"]