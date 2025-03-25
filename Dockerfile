FROM node:18-alpine

# Установка n8n и n8n-nodes-mcp
RUN npm install -g n8n@1.84.1 n8n-nodes-mcp

# Установка рабочей директории
WORKDIR /home/node
RUN mkdir -p /home/node/.n8n && chown node:node /home/node/.n8n

# Переключение на пользователя node
USER node

# Запуск n8n
CMD ["n8n", "start"]