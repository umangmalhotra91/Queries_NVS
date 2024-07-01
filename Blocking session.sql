SELECT
s.inst_id,
s.blocking_session,
s.sid,
s.serial#,
s.seconds_in_wait
FROM
gv$session s
WHERE
blocking_session IS NOT NULL;

select 'kill -9 ' || p.SPID, s.USERNAME, 'alter system kill session '''||sid||',' || s.serial# || '''IMMEDIATE;',s.STATUS
from v$session s, v$process p
where s.PADDR = p.ADDR (+)
and s.STATUS='INACTIVE' ;


ALTER SYSTEM KILL SESSION '396, 5912' immediate;

ALTER SYSTEM KILL SESSION '779, 23577' immediate;
ALTER SYSTEM KILL SESSION '1477, 6647';
ALTER SYSTEM KILL SESSION '73, 25417';


ALTER SYSTEM KILL SESSION 'sid,serial#,@1';

ALTER SYSTEM KILL SESSION 'sid,serial#,@inst_id';




SID: 1477, 73, 779
SERIAL: 6647,25417,23577





set line 2000
set pagesize 100
col username format a15
col PROGRAM for a30
col PROGRAM for a15
select SID, SERIAL#, USERNAME,osuser,STATUS, SQL_ID,machine,LOGON_TIME,last_call_et from v$session where sql_ID='83b29atc3bqx7';



3w540h9d4svjd

90tn95v9pj79v

1c5hwa16dgn6x



1022

set line 2000
set pagesize 100
col username format a15
col PROGRAM for a30
col PROGRAM for a15
select SID, SERIAL#, Program, USERNAME,osuser,STATUS, SQL_ID,machine,module,LOGON_TIME,last_call_et from v$session where SID='1421';

col job_name FOR a30
SET lines 150
 SELECT * FROM
     (SELECT log_date,job_name,status,actual_start_date,run_duration
     FROM DBA_SCHEDULER_JOB_RUN_DETAILS
     WHERE job_name='GATHER_STATS_JOB'
     ORDER BY log_id DESC)
     WHERE rownum<=2;
	 
	 
SET lines 150
col OPERATION FOR a30
col TARGET FOR a5
col START_TIME FOR a40
col END_TIME FOR a40
SELECT * FROM dba_optstat_operations ORDER BY start_time DESC;

set line 2000
set pagesize 100
col username format a15
col PROGRAM for a30
col PROGRAM for a15
select SID, SERIAL#, Program, USERNAME,osuser,STATUS, SQL_ID,machine,LOGON_TIME,last_call_et from v$session where SID='396';

set lin 333
set pages 333
set long 9999999
col SQL_FULLTEXT heading "SQLTEXT" word_wrapped justify right format A130
select distinct to_char(SQL_FULLTEXT) from gv$sqlarea where SQL_ID='&sql_id';

set lin 333
set pages 0
set long 9999999
column sql_text heading "SQLTEXT" word_wrapped justify right format A130
select SQL_TEXT from DBA_HIST_SQLTEXT where SQL_ID='&sql_id';


    select owner, job_name,SESSION_ID from DBA_SCHEDULER_RUNNING_JOBS;

select SID, SERIAL#, Program, USERNAME,osuser,STATUS, SQL_ID,machine,module,LOGON_TIME,last_call_et from v$session where SID='396';

ALTER SYSTEM KILL SESSION '396, 5912' immediate;
