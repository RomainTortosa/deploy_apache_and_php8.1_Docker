# Utilisez une image de base avec PHP et Apache
FROM php:8.1-apache

# Installez les extensions PHP nécessaires
RUN docker-php-ext-install mysqli pdo_mysql

# Activez le module Apache rewrite
RUN a2enmod rewrite

# Redémarrez le service Apache
RUN service apache2 restart

# Copiez votre code source dans le répertoire de travail du conteneur
COPY . /var/www/html

# Définissez les permissions pour le répertoire de travail
RUN chown -R www-data:www-data /var/www/html
