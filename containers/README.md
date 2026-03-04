# Creación de una imagen de la aplicación de contactos
Como primer paso hay que configurar el db.php con los parámetros acordes a la conexión de la BBDD.

Dentro del directorio del proyecto (containers), realizar el docker build para que genere la imagen:

`sudo docker build . -t jcb/contactos:1.0`

Posteriormente probar la ejecución del container viendo que la aplicación funciona:

`sudo docker run --name contactos-app -d -p 80:80 jcb/contactos:1.0`

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
