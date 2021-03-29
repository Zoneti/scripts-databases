col name format a10  
col username format a8  
col osuser format a8  
col start_time format a17  
col status format a12  
tti 'Active transactions'  
select s.sid,username
    ,t.start_time
    , r.name
    , t.used_ublk "USED BLKS"
    ,  decode(t.space, 'YES', 'SPACE TX',  decode(t.recursive, 'YES', 'RECURSIVE TX',  decode(t.noundo, 'YES', 'NO UNDO TX', t.status)  )) status  
from sys.v_$transaction t, sys.v_$rollname r, sys.v_$session s  
where t.xidusn = r.usn  and t.ses_addr = s.saddr  

/