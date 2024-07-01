MALHOUM3@oracle@glchbs-sd260068.eu.novartis.net@pam.novartis.net
MALHOUM3@oracle@PHCHBS-ST260105.EU.NOVARTIS.NET@eu-pam.novartis.net

date +'%:z %Z' time zone on os level

find . -name "*.trc" -type f -mtime +60 exec rm -rf {} \;

find /u01/app/oracle/admin/SGADEV/backup/ -mtime +60 -exec {} \;

find. -name "init_SGADEV*" -type f -mtime +60 exec rm -rf {} \;

find /u99/app/oracle/diag/clients/user_oracle/host_1918456331_80/alert -name "log_*" -mtime +90 -exec rm -rf {} \;

backup location=============================

u01/app/oracle/admin/instancename/log

/u01/app/oracle/admin/DVO99/log

net backup:= /usr/openv/netbackup/logs

Backup script location:

/u01/app/oracle/local/tvdbackup/rcv/oracle12

Rman logs:=/u01/home/oracle/.rman_log
===================================================oratab======================

 

/usr/openv/scripts/oratab

 on AIX
/etc/oratab

=========================================
ALERT LOG:=================

SQL> show parameter background_dump_dest;
$ORACLE_BASE/diag/rdbms/<dbname_in_lower_case>/$ORACLE_SID/trace/

/u01/app/oracle/diag/rdbms/tsoxpnd2/TSOXPND2/trace


=========================================================================================================
show parameter service;

show parameter FAL;

show parameter log_archive_dest;

show parameter log_archive_config;

locate *alert*.log

connect HCL_RO/Nvs_hclro_2020_#1@ILMPROD

===================instance DB status=====================
ps -ef|grep pmon
ps -ef|grep tns
lsnrctl status LISTENER
tnsping promesst_SITE1

================================checker task closed============================

I am available as checker to validate the activity.

I validate as checker that doer has followed the right procedure of implementation.

==============================RAC instance===============================

set line 2000
select INST_ID,INSTANCE_NAME,HOST_NAME,STATUS from gv$instance;


set line 2000
col HOST_NAME for a15
select i.HOST_NAME, d.name,i.INSTANCE_NAME,d.open_mode,d.database_role,d.log_mode,i.STATUS,i.LOGINS,TO_CHAR(STARTUP_TIME,'DD-MON-YYYY HH24:MI:SS') "STARTUP_TIME" from gv$database d,gv$instance i;

==========================================================

NON RAC:

set line 2000
col HOST_NAME for a15
select i.HOST_NAME, d.name,i.INSTANCE_NAME,d.open_mode,d.database_role,d.log_mode,i.STATUS,i.LOGINS,TO_CHAR(STARTUP_TIME,'DD-MON-YYYY HH24:MI:SS') "STARTUP_TIME" from v$database d,v$instance i;

select name DB_NAME,INSTANCE_NAME,HOST_NAME,OPEN_MODE,version DB_VERSION,DATABASE_STATUS,DATABASE_ROLE,protection_mode,LOGINS,to_char(STARTUP_TIME,'DD-MON-YYYY HH24:MI:SS') "DB UP TIME" from v$database,gv$instance;

set lines 999 pages 999
col OPEN_MODE for a12
col LOGINS for a12
col STATUS for a12
col HOST_NAME for a32
col DATABASE_ROLE for a12
select distinct name,open_mode,logins,status,DATABASE_ROLE,instance_name,HOST_NAME,to_char(startup_time,'DD/MM/YYYY HH24:MI:SS') from v$database,gv$instance;
SQL> SELECT TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS') FROM DUAL;

connect HCL_RO/Nvs_hclro_2020_#1@ILMPROD

select instance_name,to_char(startup_time,'mm/dd/yyyy hh24:mi:ss') as startup_time from v$instance;

. ./oracle.profile

nohup sqlplus / as sysdba @sql &

show parameter background_dump_dest

NIBR backup logs:  echo $BCKLOG

!date; echo $ORACLE_SID; hostname
date; echo $ORACLE_SID; hostname
export ORACLE_PDB_SID=BSPMBR1D

export ORACLE_PDB_SID=CAPDOC1T

select CON_ID,DBID,NAME,OPEN_MODE from v$pdbs;
alter session set container=BSPAPXQ1P;

nslookup hostname

nrusca-clp30001   -- NIBR Jump server to ssh for validation
GLCHBS-ST190002.eu.novartis:  Patch server all file placed

OEM  13c
=======

https://oemgcprod13c.eu.novartis.net/em/faces/logon/core-uifwk-console-login
password: Punjabi#1234567

Test_ACCOUNT PROVISIONING SERVICE (APS) Application Service

GL_DBA_QMANAGERS_OPS_HCL_ORG_GBL_GBL@dl.mgd.novartis.com    Q manager DL

alter session set current_schema=odw_own;
set timing on
=================================CURSOR check========================================

SELECT  max(a.value) as highest_open_cur, p.value as max_open_cur FROM v$sesstat a, v$statname b, v$parameter p WHERE  a.statistic# = b.statistic#  and b.name = 'opened cursors current' and p.name= 'open_cursors' group by p.value;

alter system set open_cursors = 3000 scope=both;

=========================pfile==========================

create pfile='/u97/RITM1900156/target_backup/initSTARMTTS_target_modify.ora' from spfile;

========Comvault log location====

Coomvault server:  GLUSEH-SP360022

I have validated the CI, Kindly proceed further database decommission.

/opt/commvault/iDataAgent64/jobResults/CV_JobResults/2/0/

===================================Password reset and check================================
set line 2000
col ACCOUNT_STATUS for a35
col PASSWORD for a120
col PTIME for a175
select d.USERNAME,d.ACCOUNT_STATUS,u.NAME,u.PASSWORD,PTIME from dba_users d, user$ u where u.NAME=d.USERNAME and u.NAME='SSE';


alter user vijay identified by values 'FA78586701FE0C59' account unlock;

alter user TVIJAY identified by values  03BE7DDA8399B6A7';

===========================================================================================
==========================================archive log gap=====================================

Select THREAD#, MAX(SEQUENCE#) AS "LAST_APPLIED_LOG" FROM V$LOG_HISTORY GROUP BY THREAD#;

Need to learn===========================

observer..?
backup run on standby or primary??
rfs and lns processes??
RFS APLIED THE ARCHIVE TO STANDBY AND LNS FETCH THE ARCHIVE TO APPLY ON STANDBY.

archive enable defer alternate and reset??
how to change archive reset to defer

ITINC2676550 Oracle Dataguard Archived Files Shipping : error================================
on standby
dgmgrl
show configuration;
show configuration verbose;
FAL_SEVER AND FAL_CLIENT

========================================

cmdb_ci.list

HCL_UNIX-Leads_ORG_GBL <HCL_UNIXLeads_ORG_GBL@dl.mgd.novartis.com>  ----Unix Leads

show parameter spfile;

if values are there no need to take backup and if databse was up from pfile at last down then need to take backup of spfile
create spfile from pfile;
==================================================conn catalog schema=========


rman target / catalog DEBA_CMUSRTSTT_11204/DEBA_CMUSRTSTT_11204@TSORMAN1

rman target / catalog PH_CHBS_SP260274_STGMDM_18/chbs#_STGMDM_PH_18@PRORMAN1

ISRM.EP-Protection.L2   :  AV Team group assignment
AV_OPS_HCL_ORG_GBL <AV_OPS_HCL_ORG_GBL@dl.mgd.novartis.com>  DL 

TIS.Private Cloud-HCL-Ops.Support: VC Team

ITINC2853992 := Pam ticket
ITINC3027994  pam ticket
ITCHG0153912 :=undo tablespace reduce

AMS.CBS.SST.SupportDesk.Cognizant.L1.5    snow ticket reassigment

>mv testtrace.log testtrace.log_bkp ; touch testtrace.log ; chmod 644 testtrace.log


ps -ef | grep -i oracle | wc -l


TIS.LAN_Wipro.Support: network team
TIS.DB.Support.NVS   ::;;engineering team
DBENGG_ORG_GBL_GBL <DBENGG_ORG_GBL_GBL@dl.mgd.novartis.com>  Enginnering team DL
LAN_Eng_Leads_ORG_GBL_GBL <LAN_Eng_Leads_ORG_GBL_GBL@dl.mgd.novartis.com> LAN Team DL
WANIntegrator_CC_ORG <WANIntegrator_CC_ORG@dl.mgd.novartis.com> WAN Team DL

https://novartiscorp.service-now.com/itsp?id=itsp_sc_cat_item&sys_id=11ce48904f8067c0f7930fbf0310c7a4    ::::RF Team.

\\glchbs-sp140005.eu.novartis.net\sp140005_SQL_Repository_awp01$   windows server copy data

Oracle DOCS NVS:

\\glchbs-sp140005.eu.novartis.net\sp140005_SQL_Repository_awp01$\BAU Oracle

Link for qualysis onborad offboard

https://novartiscorp.service-now.com/itsp?id=itsp_sc_cat_item&sys_id=230544881b37e8d011f133798b4bcba1   port open request

https://novartiscorp.service-now.com/onenovartisservices?id=compass_cat_item&sys_id=e4062b53db1f1090ff32144e16961942
 
clarity id

https://novartiscorp.service-now.com/nav_to.do?uri=%2Fcmdb_ci_service_list.do%3Fsysparm_userpref_module%3D105e5773c6112275002505b79daeebd6%26sysparm_clear_stack%3Dtrue


==================================================================

POC 19c Multitenant - DBSDGCDB@GLCHBS-ST260108     test server

------------------------------------------------------------
cmd to check port issue

nc -v hostname port number





KB0013709 - Archive shipping
KB0013709 - Archive shipping
KB0013689 - Tablespace Usage
KB0013675 - Database Instance Status
KB0023126 - How to check and kill  blocking sessions  for RAC and non RAC DB
Number    Remarks    Short description
KB0013428    Published     How to check RMAN Warning Message
c    Published     Rebuild Standby Database
KB0013648    Published     Best practise to configure DB mail
KB0013653    Published     How to monitor DB physical memory consumption
KB0013655    Published     How to create Login in Alwayson database
KB0013656    Published     How to resize the redo log file size
KB0013659    Published     How to increase process parameter
KB0013660    Published     How To Add Disk to ASM diskgroup
KB0013663    Published     How Restore and Recover Oracle Database on UNIX and Linux Server
KB0013664    Published     How to resolve ORA-00257 archiver error
KB0013668    Published     How to resolve ORA-00020: maximum number of processes
KB0013671    Published     How to Kill  Oracle session
KB0013672    Published     How  to reset user  Account Password
KB0013675    Published     How to check catalog Database and Instance Status
KB0013688    Published     How to Use Filtered Indexes to Improve Performance
KB0013689    Published     How to resolve incidents stating tablespace issue
KB0013690    Published     Resolve Oracle Errors
KB0013698    Published     How to trouble shoot SQL Server Configuration Manager  gives Invalid class [0x80041010] during start
KB0013705    Published     How to resynchronization a database which participates in AlwaysOn by removing it from Always ON an
KB0013706    Published     How to start SQL Server Reporting Services (SSRS) when it fails to start
KB0013709    Published     How to resolve incidents with Archive Shipping Delay
KB0013710    Published     How to fix cache performance, page life expectancy and the database reads performance outstanding is
KB0013711    Published     How to Maintain Paging space
KB0015068    Published     PL SQL Developer Issues
KB0057654    Published     SQL HEALTH CHECK SCRIPT FOR HIGH PRIORITY ISSUES
KB0059054    Published     How to run the Process Explorer tool in windows when a file is locked by another process.
KB0013709 - Archive shipping
KB0013689 - Tablespace Usage
KB0013675 - Database Instance Status
KB0023126 - How to check and kill  blocking sessions  for RAC and non RAC DB
Number    Remarks    Short description
KB0013428    Published     How to check RMAN Warning Message
KB0013438    Published     Rebuild Standby Database
KB0013648    Published     Best practise to configure DB mail
KB0013653    Published     How to monitor DB physical memory consumption
KB0013655    Published     How to create Login in Alwayson database
KB0013656    Published     How to resize the redo log file size
KB0013659    Published     How to increase process parameter
KB0013660    Published     How To Add Disk to ASM diskgroup
KB0013663    Published     How Restore and Recover Oracle Database on UNIX and Linux Server
KB0013664    Published     How to resolve ORA-00257 archiver error
KB0013668    Published     How to resolve ORA-00020: maximum number of processes
KB0013671    Published     How to Kill  Oracle session
KB0013672    Published     How  to reset user  Account Password
KB0013675    Published     How to check catalog Database and Instance Status
KB0013688    Published     How to Use Filtered Indexes to Improve Performance
KB0013689    Published     How to resolve incidents stating tablespace issue
KB0013690    Published     Resolve Oracle Errors
KB0013698    Published     How to trouble shoot SQL Server Configuration Manager  gives Invalid class [0x80041010] during start
KB0013705    Published     How to resynchronization a database which participates in AlwaysOn by removing it from Always ON an
KB0013706    Published     How to start SQL Server Reporting Services (SSRS) when it fails to start
KB0013709    Published     How to resolve incidents with Archive Shipping Delay
KB0013710    Published     How to fix cache performance, page life expectancy and the database reads performance outstanding is
KB0013711    Published     How to Maintain Paging space
KB0015068    Published     PL SQL Developer Issues
KB0057654    Published     SQL HEALTH CHECK SCRIPT FOR HIGH PRIORITY ISSUES
KB0059054    Published     How to run the Process Explorer tool in windows when a file is locked by another process.

-------------------------------------------------------------------------------

I) If It is YES, Than RITM need to transfer to ISRM Team. You have to set the service Offering as "ISRM Data Masking DM Demand Assessment  Requestable Offering" and choose "ISRM.DM.Req-Coord" in assignment group.

ISRM.DM.Req-Coord

You have to set the service Offering as "ISRM Data Masking DM Demand Assessment  Requestable Offering" and choose "ISRM.DM.Req-Coord" in assignment group.



===================================================================================================


top - 08:25:38 up 23 days, 23:38,  4 users,  load average: 27.65, 26.34, 27.94
Tasks: 826 total,  23 running, 803 sleeping,   0 stopped,   0 zombie
%Cpu(s): 66.1 us, 33.3 sy,  0.0 ni,  0.0 id,  0.0 wa,  0.0 hi,  0.5 si,  0.0 st
KiB Mem : 65807204 total,   890788 free,  9979096 used, 54937320 buff/cache
KiB Swap: 35647480 total, 33446908 free,  2200572 used. 44624132 avail Mem

33.3 sy   :  SYSTEM(ROOT process) consuming the CPU
