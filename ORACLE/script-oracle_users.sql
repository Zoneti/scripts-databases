/*SYNTAX :  create user <USER_NAME> identified by <PASSWORD>  default tablespace  <TABLESPACE_NAME>  temporary tablespace <TEMP_TABLESPACE>;
*/
create user SCOTT identified by oracle#41234  default tablespace users  temporary tablespace TEMP;

/*
  To create an user, which will prompt for new password upon login:  
*/  
create user SCOTT identified by oracle#41234  default tablespace users  temporary tablespace TEMP  password expire;

/* Change password of an user  */
ALTER USER SCOTT identified by NEW_PWD;  
/* Change user profile;  */
ALTER USER SCOTT PROFILE SIEBEL_PROFILE;  
/* Unlock/lock a user  */
ALTER USER SCOTT account unlock;  
ALTER USER SCOTT account lock;  
/* Make sure password expiry, so upon login, it will ask for new one  */
ALTER USER SCOTT password expire;

/*Change default tablespace of user*/
ALTER USER SCOTT DEFAULT TABLESPACE DATATS;  