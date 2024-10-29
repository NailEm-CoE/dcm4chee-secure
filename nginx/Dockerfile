FROM nginx:1.27-alpine

# Copy your template file to the container
COPY ./conf.d/server.conf.template /etc/nginx/conf.d/server.conf.template
COPY ./certs/self-signed.crt /etc/nginx/certs/self-signed.crt
COPY ./certs/self-signed.key /etc/nginx/certs/self-signed.key
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]