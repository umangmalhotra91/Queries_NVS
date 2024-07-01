========================================active connection =======================================

 
set pages 200
set linesize 300
set wrap off
break on sql_id
col SQL_ID format a15
col time format a20
col username format a18
col hrsact format a8
col SID_SERIAL# format a11
--col clipid format a6
--col clipgm format a13
col orapid format a6
col orapgm format a25
col osuser format a10
col machine format a15
col event format a25
col seq# for 99999
col ElspSec for 999999
col Wtms for 99999
col "logon_time" format a15
col xyz new_value abc
col status for a10
--col sql_text for a25
col orapgm for a17
set echo off termout off
set verify off
select decode (substr(version,1,2) , 10 , 'SECONDS_IN_WAIT', 11, 'WAIT_TIME_MICRO', 12, 'WAIT_TIME_MICRO') xyz from v$instance;
set termout on
select status,count(*) Session_Count from v$session where type='USER' group by status
/
SELECT
 a.username,
 a.LAST_CALL_ET ElspSec,
 a.sid || ',' || a.serial# SID_SERIAL#,
 b.spid orapid,
 b.program orapgm,
-- a.process clipid,
 --a.program clipgm,
 a.osuser osuser,
 a.machine,
 a.blocking_session blk_sid,
 a.event,
 a.seq#,
 decode (a.state,'WAITING',round(a.&abc/1000,0),null) Wtms,
 --round(a.&abc/1000,0) Wtms,
 -- a.ROW_WAIT_OBJ#
 -- TO_CHAR(logon_time, 'DD-MON-YY HH24:MI') "logon_time"
 a.sql_id
-- c.sql_text
FROM    v$session a,
        v$process b,
        v$sqltext c
WHERE   a.paddr = b.addr
and     a.status ='ACTIVE'
and     a.type <> 'BACKGROUND'
and     a.sql_id = c.sql_id
and     c.piece=0
order by a.sql_id;

======================================================

select 'kill -9 ' || p.SPID, s.USERNAME, 'alter system kill session '''||sid||',' || s.serial# || '''IMMEDIATE;',s.STATUS
from v$session s, v$process p
where s.PADDR = p.ADDR (+)
and s.STATUS='INACTIVE' ;


ALTER SYSTEM KILL SESSION '396, 5912' immediate;


SELECT 'ALTER SYSTEM KILL SESSION '''||sid||','||serial#||''' IMMEDIATE;' FROM v$session;



select distinct username, count (status) as "Count of Inactive sessions" from v$session where status='KILLED' group by username order by 2;



SQL> select count(*),status from v$session group by status;

 

  COUNT(*) STATUS
---------- ----------
        18 INACTIVE
       112 ACTIVE
	   
	   =====================================================
	   
	   SQL> select count(*) from v$session;

 

  COUNT(*)
----------
       131
	   ========================================
SQL> select count(*) from v$process;

 

  COUNT(*)
----------
       228

 

SQL> show parameter process

 

NAME                                 TYPE        VALUE
------------------------------------ ----------- ------------------------------
aq_tm_processes                      integer     1
cell_offload_processing              boolean     TRUE
db_writer_processes                  integer     6
gcs_server_processes                 integer     0
global_txn_processes                 integer     1
job_queue_processes                  integer     108
log_archive_max_processes            integer     4
processes                            integer     250
processor_group_name                 string
SQL> show parameter sessions;

 

NAME                                 TYPE        VALUE
------------------------------------ ----------- ------------------------------
java_max_sessionspace_size           integer     0
java_soft_sessionspace_limit         integer     0
license_max_sessions                 integer     0
license_sessions_warning             integer     0
sessions                             integer     432
shared_server_sessions               integer
 =======================================================================

!ps -ef|grep LOCAL=NO



col username format a15
col PROGRAM for a30
col PROGRAM for a15
select SID, SERIAL#, Program, USERNAME,osuser,STATUS, SQL_HASH_VALUE,machine,LOGON_TIME,last_call_et from v$session where username not in('SYS','SYSTEM');
SQL> SP2-0226: Invalid line number
SQL> SQL> SQL> SQL> SQL> SQL>
       SID    SERIAL# PROGRAM         USERNAME        OSUSER     STATUS     SQL_HASH_VALUE MACHINE         LOGON_TIME      LAST_CALL_ET
---------- ---------- --------------- --------------- ---------- ---------- -------------- --------------- --------------- ------------
        79      20650 public (product NIRT_REDL       nirt       INACTIVE                0 GLCHST-SD220002 10-JUL-20               3147
       101      36650 JDBC Thin Clien DBSNMP          oracle     INACTIVE                0 GLCHST-SD260004 07-JUL-20                 10
       111       4082 SQL Developer   NIRT_DEV        koczacr1   INACTIVE       1677544206 PHCHBS-W67883   14-JUL-20              18964
       129        807 JDBC Thin Clien NOVMON          SYS_APM_SV INACTIVE                0 PHCHBS-SP320657 13-JUL-20                158
       138      62261 rake QUEUE=emai NIRT_DEV        nirt       INACTIVE                0 GLCHST-SD220002 10-JUL-20                  5
       148      56603 SQL Developer   NIRT_REDL       koczacr1   INACTIVE                0 PHCHBS-W67883   14-JUL-20               9980
       173      18825 public (product NIRT_DEV        nirt       INACTIVE       2057858921 GLCHST-SD220002 07-JUL-20                  1
       176      31912 rake QUEUE=dts_ NIRT_DEV        nirt       INACTIVE                0 GLCHST-SD220002 10-JUL-20                  3
       218      20615 rake QUEUE=cach NIRT_DEV        nirt       INACTIVE                0 GLCHST-SD220002 10-JUL-20                  3
       283       7737 JDBC Thin Clien DBSNMP          oracle     INACTIVE                0 GLCHST-SD260004 13-JUL-20                 74
       289      51488 JDBC Thin Clien NOVMON          SYS_APM_SV INACTIVE                0 PHCHBS-SP320657 14-JUL-20                 98
       345      16471 rake QUEUE=cach NIRT_REDL       nirt       INACTIVE                0 GLCHST-SD220002 10-JUL-20                  3
       354      44863 rake QUEUE=emai NIRT_REDL       nirt       INACTIVE                0 GLCHST-SD220002 10-JUL-20                  3
       364      12230 rake QUEUE=dts_ NIRT_REDL       nirt       INACTIVE                0 GLCHST-SD220002 10-JUL-20                  3
       383      46305 rake QUEUE=cach NIRT_DEV2017    nirt       INACTIVE                0 GLCHST-SD220002 10-JUL-20                  1
       391      54791 rake QUEUE=emai NIRT_DEV2017    nirt       INACTIVE                0 GLCHST-SD220002 10-JUL-20                  4
       401      20367 rake QUEUE=dts_ NIRT_DEV2017    nirt       INACTIVE                0 GLCHST-SD220002 10-JUL-20                  1

 

17 rows selected. 
	   
