-- Create a user with lots of persmissions

undef user_name

DROP USER &&user_name CASCADE;

CREATE USER &&user_name
PROFILE "DEFAULT"
IDENTIFIED BY "&user_password"
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP";

-- Grants the CREATE SESSION privilege (can't connect without it)
GRANT CONNECT TO &&user_name;

-- Create, modify, and delete certain types of schema objects.
GRANT RESOURCE TO &&user_name;

/* RESOURCE is useful for developers as it grants the following privileges:

  CREATE CLUSTER
  CREATE INDEXTYPE
  CREATE OPERATOR
  CREATE PROCEDURE
  CREATE SEQUENCE
  CREATE TABLE
  CREATE TRIGGER
  CREATE TYPE

  UNLIMITED TABLESPACE

Notes
-----

- UNLIMITED TABLESPACE does not appear in the RESOURCE role.
  It is allocated directly on the user.

- Without a quota on the tablespace (and without UNLIMITED TABLESPACE)
  this error ORA-01950: no privileges on tablespace 'USERS'

- If UNLIMITED TABLESPACE is granted, the user can write to ANY tablespace,
  including SYSTEM.

*/

-- Autotrace
-- GRANT SELECT_CATALOG_ROLE TO &&user_name;
-- GRANT EXECUTE_CATALOG_ROLE TO &&user_name;

-- SQL tuning advisor
-- GRANT ADVISOR TO &&user_name;

-- PL/SQL debugging
-- GRANT DEBUG ANY PROCEDURE TO &&user_name;
-- GRANT DEBUG CONNECT SESSION TO &&user_name;

-- Some other schema objects
-- GRANT CREATE VIEW TO &&user_name;
--GRANT CREATE MATERIALIZED VIEW TO &&user_name;
--GRANT CREATE ANY DIRECTORY TO &&user_name;
--GRANT DROP ANY DIRECTORY TO &&user_name;

-- Enable a user to perform most administrative tasks.
--GRANT DBA TO &&user_name;


