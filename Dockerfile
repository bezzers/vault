# Docker file to run Hashicorp Vault (vaultproject.io)

FROM cgswong/vault:0.5.1
MAINTAINER Paul Beswick

RUN mkdir /vault
ADD config.hcl /vault/config.hcl
ADD entrypoint.sh /vault/entrypoint.sh

ENTRYPOINT ["/vault/entrypoint.sh"]
CMD ["version"]
