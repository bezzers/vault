# vault
Code for a Docker image that creates a standard OW Labs vault server build

Run the image with the following command:

docker run -d -e VAULT_ADVERTISE_ADDR=<server address> -e SERVICE_NAME=vault -p 8200:8200 -v /etc/docker:/etc/docker --dns 172.17.42.1 --name vault owlabs/vault server -config=/vault/

Communication is encrypted using TLS. To simplify cluster set-up we re-use the certificates already created for Docker Swarm communication. That is why we map in the docker folder.
