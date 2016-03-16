# vault
Code for a Docker image that creates a standard OW Labs Vault server build

Run the image with the following command:
```
docker run -d --restart always \
  -e VAULT_ADVERTISE_ADDR=https://$HOST_NAME:8200 \
  --name vault -e SERVICE_NAME=vault \ 
  -p 8200:8200 -v /etc/docker:/etc/docker \
  --dns 172.17.42.1 --dns-search service.consul dns-search node.consul \
  owlabs/vault server -config=/vault/
```
Communication is encrypted using TLS. To simplify cluster set-up we re-use the certificates already created for Docker Swarm communication. That is why we map in the docker folder.
