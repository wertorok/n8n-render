FROM n8nio/n8n:latest
ENV N8N_API_KEY=mysecretkey2025
ENV N8N_BASIC_AUTH_ACTIVE=false
CMD ["n8n", "start"]