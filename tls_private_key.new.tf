resource "tls_private_key" "new" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "private_key" {
  content  = tls_private_key.new.private_key_pem
  filename = "${path.module}/id_rsa"
}
