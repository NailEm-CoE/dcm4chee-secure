# dcm4chee-secure

for example server_name is 192.168.1.70

`
sed -i 's|<server_name>|192.168.1.70|g' env/*.env

mkdir -p nginx/certs
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx/certs/self-signed.key -out nginx/certs/self-signed.crt -subj "/CN=localhost"
`