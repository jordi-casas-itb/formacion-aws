# Dockerfile para generar imagen con la aplicación de Contactos
FROM php:8.5-apache

# Instalar extensiones para mysql y php en Apache
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli

# Copiar el código en la carpeta del servidor web
COPY index.php /var/www/html/index.php
COPY db.php /var/www/html/db.php

# Publicar el puerto 80
EXPOSE 80

# Ejecutar el comando de inicio del servidio Apache
CMD ["apache2ctl", "-D", "FOREGROUND"]