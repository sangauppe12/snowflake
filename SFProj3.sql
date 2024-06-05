-- Creating DB Roles Uodates same file
--------------------------------
USE ROLE SYSADMIN;

CREATE DATABASE ROLE TESTDB.TestGitRole;

USE ROLE SECURITYADMIN;

GRANT DATABASE ROLE TESTDB.TestGitRole TO ROLE SYSADMIN; 

-- Granting DB privileges to DB role
--------------------------------
USE ROLE SECURITYADMIN;

GRANT MODIFY ON DATABASE TESTDB TO DATABASE ROLE TESTDB.TestGitRole;

-- Granting schema privileges to DB role
--------------------------------
USE ROLE SECURITYADMIN;

GRANT CREATE VIEW ON SCHEMA TESTDB.KPI_RETAIL_ANALYTICS TO DATABASE ROLE TESTDB.TestGitRole; 