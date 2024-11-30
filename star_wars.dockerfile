FROM mysql:8.0

# Define a senha padrão para o usuário root e o nome do banco
ENV MYSQL_ROOT_PASSWORD=123456
ENV MYSQL_DATABASE=star_wars
ENV MYSQL_USER=root
ENV MYSQL_PASSWORD=123456

# Copia o dump SQL para a pasta de inicialização do MySQL no container
COPY starwars_db.sql /docker-entrypoint-initdb.d/

# Define a porta padrão do MySQL
EXPOSE 3306
