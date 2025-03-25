FROM node:18-alpine

# Установка n8n глобально
RUN npm install -g n8n

# Установка рабочей директории
WORKDIR /home/node
RUN mkdir -p /home/node/.n8n && chown node:node /home/node/.n8n

# Копируем конфигурацию
COPY config.json /home/node/.n8n/config

# Переключение на пользователя node
USER node

# Запуск n8n
CMD ["n8n", "start"]