backend "consul" {
  address = "consul.service.consul:8500"
  path = "vault"
}

listener "tcp" {
  address = "vault.service.consul:8200"
  tls_disable = 1
  tls_cert_file = cert.pem
  tls_key_file = key.pem
} 
