\echo \conninfo
\echo
\echo -n 'client encoding: '\encoding
\echo

SET client_min_messages = ERROR;
\set user anguser
\set password '\'angproj\''
\set database angproj

DROP DATABASE if exists :database;
DROP USER if exists :user;

CREATE USER :user WITH PASSWORD :password;
CREATE DATABASE :database WITH OWNER=:user ENCODING='UTF8';

\c :database

-- specify encoding to match your files encoding, usually UTF8
-- valid values are: 'UTF8', 'LATIN1', 'WIN1252'
\encoding 'UTF8'

-- create extensions
\ir 1_extensions.sql

\c :database :user
-- create schema
\ir 2_schema.sql

-- Swiss Cantons and Communities with polygons
\ir gis/ortschaften.sql

-- insert data in slo-mo or use COPY for speedup
--\ir 3_inserts.sql
\ir 3_copy.sql

-- create primary keys, constraints, indexes
\ir 4_constraints.sql
