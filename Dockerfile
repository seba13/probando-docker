# Usar la imagen oficial de MySQL
FROM mysql/mysql-server:8.0.24

# Copiar el archivo de configuración de MySQL
COPY config/user.cnf /etc/mysql/conf.d/user.cnf

# Crear un script de inicialización para crear la base de datos y el usuario
COPY init-db.sh /docker-entrypoint-initdb.d/

# Exponer el puerto de MySQL
EXPOSE 3306