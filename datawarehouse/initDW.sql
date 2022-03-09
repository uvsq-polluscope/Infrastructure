\pset pager 0

\c postgres
DROP DATABASE IF EXISTS datawarehouse;
SELECT 'CREATE DATABASE datawarehouse'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'datawarehouse')\gexec

