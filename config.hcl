backend "consul" {
  address = "consul.service.consul:8500"
  path = "vault"
}

listener "tcp" {
  address = "0.0.0.0:8200"
  tls_disable = 1
  tls_cert_file = "/etc/docker/cert.pem"
  tls_key_file = "/etc/docker/key.pem"
} 

disable_mlock = true
