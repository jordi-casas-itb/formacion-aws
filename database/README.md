# Base de datos Mysql

A continuación se detallan las sentencias pera crear una base de datos de ejemplo para poder probar un cliente de BBDD.
Realitzdo sobre EC2 AMI Linux 2023 amb Maria DB 10.5.29


## Asignar una contraseña al usuario root porqué por defecto está en blanco

`ALTER USER 'root'@'localhost' IDENTIFIED BY 'ITB2026.';`

## Crear la BBDD

`create database curso;`

`use curso;`

## Crear una tabla
Ejemplo de tabla llamada "employees"

```CREATE TABLE `employees` (`emp_no` int(11) NOT NULL AUTO_INCREMENT,`birth_date` date NOT NULL,`first_name` varchar(14) NOT NULL,`last_name` varchar(16) NOT NULL,`gender` enum('M','F') NOT NULL,`hire_date` date NOT NULL, PRIMARY KEY (`emp_no`));```

## Insertar un registro de ejemplo

Creación de un usuario Jordi Casas

```INSERT INTO `employees` (first_name, last_name, birth_date, gender, hire_date) values("Jordi","Casas", CURDATE(), "M", CURDATE());```

## Habilitar la connexión desde otra EC2 al Mysql

Per ejemplo, crear un usuario query para no utilitzar root que habilita el acceso desde la EC2 con ip interna 172.31.88.206 al Mysql

`CREATE USER 'query'@'172.31.88.206' IDENTIFIED BY 'ITB2026.';`

`GRANT ALL ON curso.* TO query@'172.31.88.206';`

Si se quiere habilitar el acceso a cualquier máquina de origen:

`CREATE USER 'query'@'%' IDENTIFIED BY 'ITB2026.';`

`GRANT ALL ON curso.* TO query@'%';`