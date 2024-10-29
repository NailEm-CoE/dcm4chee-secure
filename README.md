# dcm4chee-secure

`
mkdir -p nginx/certs
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx/certs/self-signed.key -out nginx/certs/self-signed.crt -subj "/CN=localhost"
`