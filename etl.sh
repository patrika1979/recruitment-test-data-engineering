docker cp etl.sql recruitment-test-data-engineering_postgres_1:/home
docker exec -it $(docker ps -aqf "name=recruitment-test-data-engineering_postgres_1") psql -U postgres -h localhost -f /home/etl.sql
