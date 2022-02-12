\pset pager 0

\c postgres
DROP DATABASE IF EXISTS test;
SELECT 'CREATE DATABASE test'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'test')\gexec


