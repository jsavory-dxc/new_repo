-- Role: tuscon
-- DROP ROLE tuscon;

CREATE ROLE tuscon WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  CREATEDB
  CREATEROLE
  NOREPLICATION
  VALID UNTIL 'infinity';

GRANT rds_superuser TO tuscon;