variable "key_name" {
type = string
default = "thekey"
}



resource "tls_private_key" "pk" {

  algorithm = "RSA"

  rsa_bits  = 4096

}



resource "aws_key_pair" "thekey" {

  key_name   = "thekey"  # Create a key named "thekey"

  public_key = tls_private_key.pk.public_key_openssh



  provisioner "local-exec" { # Create a local copy of the private key named "thekey.pem"

    command = "echo '${tls_private_key.pk.private_key_pem}' > ~/.ssh/thekey.pem " # Export the key to the ~/.ssh/ folder, for easy access using ansible. 
  }

}

