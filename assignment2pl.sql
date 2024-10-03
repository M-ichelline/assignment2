name:MUSHIMIYIMANA Michelline
=============================
Id:25696
========


QL*Plus: Release 21.0.0.0.0 - Production on Wed Oct 2 06:35:06 2024
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: sys as sysdba
Enter password:

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> show pdbs;

    CON_ID CON_NAME                       OPEN MODE  RESTRICTED
---------- ------------------------------ ---------- ----------
         2 PDB$SEED                       READ ONLY  NO
         3 XEPDB1                         READ WRITE NO
SQL> select con_id,tablespace_name,file_name
  2  from cdba_data_files
  3  where con_id =3;
from cdba_data_files
     *
ERROR at line 2:
ORA-00942: table or view does not exist


SQL> select con_id, tablespace_name, file_name
  2  from cdb_data_files
  3  where con_id = 3;

    CON_ID TABLESPACE_NAME
---------- ------------------------------
FILE_NAME
--------------------------------------------------------------------------------
         3 SYSTEM
C:\APP\USER\PRODUCT\21C\ORADATA\XE\XEPDB1\SYSTEM01.DBF

         3 SYSAUX
C:\APP\USER\PRODUCT\21C\ORADATA\XE\XEPDB1\SYSAUX01.DBF

         3 UNDOTBS1
C:\APP\USER\PRODUCT\21C\ORADATA\XE\XEPDB1\UNDOTBS01.DBF


    CON_ID TABLESPACE_NAME
---------- ------------------------------
FILE_NAME
--------------------------------------------------------------------------------
         3 USERS
C:\APP\USER\PRODUCT\21C\ORADATA\XE\XEPDB1\USERS01.DBF


SQL> Create pluggable database plsql_class2024db admin user um_plsqlauca identified by 123
  2  File_name_convert =('C:\app\USER\product\21c\oradata\XE\pdbseed\','C:\app\USER\product\21c\oradata\XE\plsql_class2024db')
  3  ;

Pluggable database created.

SQL>
SQL>
SQL>
SQL>
SQL> Create pluggable database plsql_class2024db admin user is_to_delete identified by 123
  2  ;

*
ERROR at line 2:
ORA-65016: FILE_NAME_CONVERT must be specified


SQL> Create pluggable database plsql_class2024db admin user um_to_delete identified by 123
  2  File_name_convert =('C:\app\USER\product\21c\oradata\XE\pdbseed\','C:\app\USER\product\21c\oradata\XE\um_to_delete');
Create pluggable database plsql_class2024db admin user um_to_delete identified by 123
*
ERROR at line 1:
ORA-65012: Pluggable database PLSQL_CLASS2024DB already exists.


SQL> Create pluggable database um_to_delete admin user um_plsqlauca identified by 123
  2  File_name_convert =('C:\app\USER\product\21c\oradata\XE\pdbseed\','C:\app\USER\product\21c\oradata\XE\um_to_delete');

Pluggable database created.

SQL> alter pluggable database um_to_delete open;

Pluggable database altered.

SQL> show pdbs;

    CON_ID CON_NAME                       OPEN MODE  RESTRICTED
---------- ------------------------------ ---------- ----------
         2 PDB$SEED                       READ ONLY  NO
         3 XEPDB1                         READ WRITE NO
         4 PLSQL_CLASS2024DB              MOUNTED
         5 UM_TO_DELETE                   READ WRITE NO
SQL> Alter pluggable database um_to-delete close immediate;
Alter pluggable database um_to-delete close immediate
                              *
ERROR at line 1:
ORA-00922: missing or invalid option


SQL> Alter pluggable database um_to_delete close immediate;

Pluggable database altered.

SQL> Drop pluggable database um_to_delete including datafiles;

Pluggable database dropped.

SQL> File_name_convert =('C:\app\USER\product\21c\oradata\XE\pdbseed\','C:\app\USER\product\21c\oradata\XE\um_to_delete');
SP2-0734: unknown command beginning "File_name_..." - rest of line ignored.
SQL> File_name_convert =('C:\app\USER\product\21c\oradata\XE\pdbseed\','C:\app\USER\product\21c\oradata\XE\um_to_delete');SP2-0042: unknown command "F" - rest of line ignored.
SQL> c





























QL*Plus: Release 21.0.0.0.0 - Production on Wed Oct 2 06:35:06 2024
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: sys as sysdba
Enter password:

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> show pdbs;

    CON_ID CON_NAME                       OPEN MODE  RESTRICTED
---------- ------------------------------ ---------- ----------
         2 PDB$SEED                       READ ONLY  NO
         3 XEPDB1                         READ WRITE NO
SQL> select con_id,tablespace_name,file_name
  2  from cdba_data_files
  3  where con_id =3;
from cdba_data_files
     *
ERROR at line 2:
ORA-00942: table or view does not exist


SQL> select con_id, tablespace_name, file_name
  2  from cdb_data_files
  3  where con_id = 3;

    CON_ID TABLESPACE_NAME
---------- ------------------------------
FILE_NAME
--------------------------------------------------------------------------------
         3 SYSTEM
C:\APP\USER\PRODUCT\21C\ORADATA\XE\XEPDB1\SYSTEM01.DBF

         3 SYSAUX
C:\APP\USER\PRODUCT\21C\ORADATA\XE\XEPDB1\SYSAUX01.DBF

         3 UNDOTBS1
C:\APP\USER\PRODUCT\21C\ORADATA\XE\XEPDB1\UNDOTBS01.DBF


    CON_ID TABLESPACE_NAME
---------- ------------------------------
FILE_NAME
--------------------------------------------------------------------------------
         3 USERS
C:\APP\USER\PRODUCT\21C\ORADATA\XE\XEPDB1\USERS01.DBF


SQL> Create pluggable database plsql_class2024db admin user um_plsqlauca identified by 123
  2  File_name_convert =('C:\app\USER\product\21c\oradata\XE\pdbseed\','C:\app\USER\product\21c\oradata\XE\plsql_class2024db')
  3  ;

Pluggable database created.

SQL>
SQL>
SQL>
SQL>
SQL> Create pluggable database plsql_class2024db admin user is_to_delete identified by 123
  2  ;

*
ERROR at line 2:
ORA-65016: FILE_NAME_CONVERT must be specified


SQL> Create pluggable database plsql_class2024db admin user um_to_delete identified by 123
  2  File_name_convert =('C:\app\USER\product\21c\oradata\XE\pdbseed\','C:\app\USER\product\21c\oradata\XE\um_to_delete');
Create pluggable database plsql_class2024db admin user um_to_delete identified by 123
*
ERROR at line 1:
ORA-65012: Pluggable database PLSQL_CLASS2024DB already exists.


SQL> Create pluggable database um_to_delete admin user um_plsqlauca identified by 123
  2  File_name_convert =('C:\app\USER\product\21c\oradata\XE\pdbseed\','C:\app\USER\product\21c\oradata\XE\um_to_delete');

Pluggable database created.

SQL> alter pluggable database um_to_delete open;

Pluggable database altered.

SQL> show pdbs;

    CON_ID CON_NAME                       OPEN MODE  RESTRICTED
---------- ------------------------------ ---------- ----------
         2 PDB$SEED                       READ ONLY  NO
         3 XEPDB1                         READ WRITE NO
         4 PLSQL_CLASS2024DB              MOUNTED
         5 UM_TO_DELETE                   READ WRITE NO
SQL> Alter pluggable database um_to-delete close immediate;
Alter pluggable database um_to-delete close immediate
                              *
ERROR at line 1:
ORA-00922: missing or invalid option


SQL> Alter pluggable database um_to_delete close immediate;

Pluggable database altered.

SQL> Drop pluggable database um_to_delete including datafiles;

Pluggable database dropped.

SQL> File_name_convert =('C:\app\USER\product\21c\oradata\XE\pdbseed\','C:\app\USER\product\21c\oradata\XE\um_to_delete');
SP2-0734: unknown command beginning "File_name_..." - rest of line ignored.
SQL> File_name_convert =('C:\app\USER\product\21c\oradata\XE\pdbseed\','C:\app\USER\product\21c\oradata\XE\um_to_delete');SP2-0042: unknown command "F" - rest of line ignored.
SQL> c





























