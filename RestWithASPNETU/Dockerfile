FROM mysql:5.7.22
EXPOSE 3306
COPY ./RestWithASPNETU/db/migrations/ /home/database/
COPY ./RestWithASPNETU/db/dataset/ /home/database/
COPY ./RestWithASPNETU/ci/init_database.sh /docker-entrypoint-initdb.d/init_database.sh