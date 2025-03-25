FROM node:18
RUN npm install -g n8n
RUN rm -rf /home/node/.n8n || true
ENV N8N_API_KEY=mysecretkey2025
ENV N8N_BASIC_AUTH_ACTIVE=false
ENV N8N_API_DISABLED=false
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0
USER node
CMD ["/bin/sh", "-c", "env && n8n start"]