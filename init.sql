-- create user/password

CREATE USER griecomv WITH PASSWORD 'griecomv';
CREATE DATABASE griecomvdb;
GRANT ALL PRIVILEGES ON DATABASE griecomvdb TO griecomv;

--