set feedback off pages 0 long 900000 lines 20000 pagesize 20000 serveroutput on 
accept USERNAME prompt "Enter username :"  
execute dbms_METADATA.SET_TRANSFORM_PARAM(DBMS_METADATA.SESSION_TRANSFORM,'SQLTERMINATOR',true);  
SELECT DBMS_METADATA.GET_DDL('USER',username) as script from DBA_USERS where username='&username'  
UNION ALL
SELECT DBMS_METADATA.GET_GRANTED_DDL('SYSTEM_GRANT',grantee)as script from DBA_SYS_PRIVS where grantee='&username' and rownum=1  
UNION ALL  
SELECT DBMS_METADATA.GET_GRANTED_DDL('ROLE_GRANT',grantee)as script from DBA_ROLE_PRIVS where grantee='&username' and rownum=1 
UNION ALL  
SELECT DBMS_METADATA.GET_GRANTED_DDL('OBJECT_GRANT',grantee)as script from DBA_TAB_PRIVS where grantee='&username' and rownum=1;