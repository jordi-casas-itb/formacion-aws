# Comandos ECR
A continuación se recogen los comandos para hacer las operaciones con ECR para subir una imagen:

## 1.- Login
`aws ecr get-login-password --region us-east-1 | sudo docker login --username AWS --password-stdin _URI-repositorio-ECR_`

Ejemplo:

`aws ecr get-login-password --region us-east-1 | sudo docker login --username AWS --password-stdin 637423623604.dkr.ecr.us-east-1.amazonaws.com/jcb-repo/contactos`

## 2.- Tag de la imagen
`sudo docker tag _imageid_ _repositorio:tag_`

Ejemplo:

`sudo docker tag c559670eea56 637423623604.dkr.ecr.us-east-1.amazonaws.com/jcb-repo/contactos`

## 3.- Push de la imagen
`sudo docker push _repositorio:tag_`

Ejemplo:

`sudo docker push 637423623604.dkr.ecr.us-east-1.amazonaws.com/jcb-repo/contactos:1.0`
