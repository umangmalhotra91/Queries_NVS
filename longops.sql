alter session set nls_Date_format='dd-mon-yy hh24:mi:ss';
col Min_since_active/inactive for 9999999.99
col USERNAME for a22
col event for a35
set line 333

 

SELECT inst_id,username,sid,serial#,status,sql_id,logon_time,LAST_CALL_ET/60 "Min_since_active/inactive",event
FROM gv$session where type!='BACKGROUND' and username is not null
--and status='ACTIVE' 
--and username=upper('&usr')
order by 5,8;


================================================================================
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
