# dcm4chee-secure
To configure the server with the name `192.168.1.70`, follow these steps:

1. Update the environment files and create self-signed certificates:

    ```sh
    sed -i 's|<server_name>|192.168.1.70|g' env/*.env

    mkdir -p nginx/certs
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx/certs/self-signed.key -out nginx/certs/self-signed.crt -subj "/CN=localhost"
    ```

2. Update all passwords in `env/*.env`.

3. Run the following command to build and start the Docker containers:

    ```sh
    docker compose up -d --build
    ```

4. Configure the `Valid redirect URIs` in Keycloak by navigating to `http://192.168.1.70/auth`. Go to the `dcm4che` realm and select the clients `[dcm4chee-arc-ui, dcm4chee-arc-rs]`.

    ![Update Screenshot](./update.png)