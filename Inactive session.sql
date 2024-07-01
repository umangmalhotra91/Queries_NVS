col username format a15
col PROGRAM for a30
col PROGRAM for a15
select SID, SERIAL#, Program, USERNAME,osuser,STATUS, SQL_HASH_VALUE,machine,LOGON_TIME,last_call_et from v$session where status='INACTIVE' and username='INFA_ILM_REPO';


to kill all inactive sessions:


select 'kill -9 ' || p.SPID, s.USERNAME, 'alter system kill session '''||sid||',' || s.serial# || '''IMMEDIATE;',s.STATUS
from v$session s, v$process p
where s.PADDR = p.ADDR (+)
and s.STATUS='INACTIVE' ;


Query to monitor inactive sessions:
:::::::::::::::::

select username,status,count(*) from v$session group by username,status order by 1;

Query to monitor Process:::::::::::::::::


select resource_name,CURRENT_UTILIZATION,MAX_UTILIZATION,LIMIT_VALUE from v$resource_limit where resource_name in ('processes','sessions');



select count(*),status from v$session group by status;
select count(*) from v$process; 



set line 200
set pagesize 100
col username format a15
col PROGRAM for a30
col PROGRAM for a15
select SID, SERIAL#, Program, USERNAME,osuser,STATUS, SQL_HASH_VALUE,machine,LOGON_TIME,last_call_et from v$session where username not in('SYS','SYSTEM');


set line 2000
set pagesize 100
col username format a15
col PROGRAM for a30
col PROGRAM for a15
select SID, SERIAL#, Program, USERNAME,osuser,STATUS, SQL_HASH_VALUE,machine,LOGON_TIME,last_call_et from v$session where username='POMSPRD';

alter system kill session '37,11298' immediate;
