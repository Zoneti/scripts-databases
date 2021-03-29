-- Generate explain plan  
-- Syntax EXPLAIN PLAN FOR < SQL STATEMENT> ; 
 explain plan for  select count(*) from dbaclass;  
 -- View explain plan   
 select * from table(dbms_xplan.display);
