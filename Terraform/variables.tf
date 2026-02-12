# Jordi Casas
# Febrero'26
# Fichero de variables para el proyecto

variable "instance_name" {
  description = "Valor del nombre la instancia EC2"
  type        = string
  default     = "jcb-ec2-terraform"
}

variable "instance_type" {
  description = "Tipo de instancia a utilizar"
  type        = string
  default     = "t2.micro"
}