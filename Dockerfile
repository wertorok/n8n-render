FROM node:18
RUN npm install -g n8n
RUN mkdir -p /home/node/.n8n && echo '{"auth": {"basicAuth": {"active": false}}, "api": {"key": "mysecretkey2025", "disabled": false}}' > /home/node/.n8n/config
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0
USER node
CMD ["n8n", "start"]