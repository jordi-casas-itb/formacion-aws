# Jordi Casas
# Febrero'26
# Ejemplo con Terraform de despliegue de un servidor Ubuntu

# Se define la zona de AWS con la que operar
provider "aws" {
  region = "us-east-1"
}

# Se define un objeto data para obtener el identificador de la AMI de Ubuntu en este caso
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

# Configurar un recuros
resource "aws_instance" "ubuntu_server" {
  ami           = data.aws_ami.ubuntu.id # Obtiene el AMI ID del bloque data anterior
  instance_type = "t2.micro" # Se define el tipo de instancia a desplegar
  #instance_type = var.instance_type # Se obtiene el tipo de instancia del fichero de variables

  tags = {
    Name = "tf-ubuntu" # Se indica el nombre de la instancia
    #Name = var.instance_name # Se obtiene el nombre de la instancia del fichero de variables
  }
}