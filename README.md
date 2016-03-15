# vault
Code for a Docker image that creates a standard OW Labs vault server build

Run the image with the following command:

docker run -d owlabs/vault server -config=/vault/

Communication is encrypted using TLS. To simplify cluster set-up we re-use the certificates already created for Docker Swarm communication.
