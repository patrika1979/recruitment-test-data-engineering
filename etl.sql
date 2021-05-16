CREATE DATABASE findmypast;
\connect findmypast;

drop table if exists people;
CREATE TABLE  people
(given_name VARCHAR(500) NOT NULL,family_name VARCHAR(500) NOT NULL,date_of_birth date,place_of_birth VARCHAR(100) NOT NULL);

\copy people FROM '/home/config/data/people.csv' DELIMITER ',' CSV HEADER

drop table if exists places;
CREATE TABLE places
(city VARCHAR(500) NOT NULL, county VARCHAR(500) NOT NULL, country VARCHAR(500) NOT NULL);

\copy places FROM '/home/config/data/places.csv' DELIMITER ',' CSV HEADER
