FROM nginx:1.27-alpine

# Copy your template file to the container
COPY nginx/conf.d/server.conf.template /etc/nginx/conf.d/server.conf.template
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]