# Use the official MySQL 8 image as the base image
FROM mysql:8

# Set environment variables for MySQL
ENV MYSQL_DATABASE=${MYSQL_DATABASE} \
    MYSQL_USER=${MYSQL_USER} \
    MYSQL_PASSWORD=${MYSQL_PASSWORD} \
    MYSQL_RANDOM_ROOT_PASSWORD='true'

# Specify the default authentication plugin for MySQL
CMD ["--default-authentication-plugin=mysql_native_password"]

# Copy initialization scripts to the docker-entrypoint-initdb.d directory
COPY ./dev/docker/init.db /docker-entrypoint-initdb.d

# Define a volume for MySQL data
VOLUME ["/var/lib/mysql"]
