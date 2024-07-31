Recommendation
  --------------
  - Consider creating a SQL plan baseline for the plan with the best average
    elapsed time.
execute dbms_sqltune.create_sql_plan_baseline(task_name =>'796y69bsg9arn', owner_name => 'SYS', plan_hash_value =>3223485905);


796y69bsg9arn 

alter session set nls_date_format = 'DD-MON-YYYY HH24:MI:SS' ;
set lines 333
col CREATED for a33
col creator for a13
col PLAN_NAME for a38
col SQL_HANDLE for a33
select d.SQL_HANDLE,d.PLAN_NAME,d.created,d.ENABLED,d.ACCEPTED,d.FIXED,d.EXECUTIONS,OPTIMIZER_COST,d.REPRODUCED,d.ORIGIN,
to_char(d.last_executed, 'dd-mon-yyyy hh24:mi:ss') "Last_executed" from DBA_SQL_PLAN_BASELINES d order by 3;

SQL> select inst_id,ADDRESS, HASH_VALUE,plan_hash_value from gV$SQLAREA where SQL_ID = '796y69bsg9arn';

   INST_ID ADDRESS          HASH_VALUE PLAN_HASH_VALUE
---------- ---------------- ---------- ---------------
         1 000000033AF33EB8 4042566388       969413720
         2 00000003303ABB60 4042566388      2059343670



SQL> select inst_id,ADDRESS, HASH_VALUE,plan_hash_value from gV$SQLAREA where SQL_ID = '796y69bsg9arn';
 
   INST_ID  ADDRESS          HASH_VALUE PLAN_HASH_VALUE 
----------  ---------------- ---------- --------------- 
         3  000000015BE8BA18  825215764      4124580503 
 
exec DBMS_SHARED_POOL.PURGE ('00000003303ABB60, 4042566388', 'C'); 

VERIFY---
 
SQL> select ADDRESS, HASH_VALUE,plan_hash_value,inst_id from gV$SQLAREA where SQL_ID = '0fbmn30skzksn';  
 
no rows selected
