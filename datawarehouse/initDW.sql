\pset pager 0

\c postgres
DROP DATABASE IF EXISTS test;
SELECT 'CREATE DATABASE test'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'test')\gexec


\c test;
CREATE TABLE test1 (
       id int primary key
);

insert into test1 values(1);

/*Peupler la base avec les données d'une campagne
\i script.sql
*/

