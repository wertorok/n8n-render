FROM node:18-alpine

# Установка n8n глобально
RUN npm install -g n8n@1.84.1

# Установка рабочей директории
WORKDIR /home/node
RUN mkdir -p /home/node/.n8n && chown node:node /home/node/.n8n

# Переключение на пользователя node
USER node

# Запуск n8n
CMD ["n8n", "start"]