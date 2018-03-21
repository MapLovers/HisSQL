exp DATALOAD/123456 owner=DATALOAD rows=y indexes=n compress=n buffer=65536 file=F:\EXP_DATALOAD_20151011.dmp log=F:\EXP_DATALOAD_20151011.log

exp DATALOAD/DATALOAD@LHDORS  file=F:\EXP_DATALOAD_201510173.dmp log=F:\EXP_DATALOAD_201510173.log buffer=65536 FULL=Y

exp DATALOAD/DATALOAD@LHDORS file=F:\EXP_DATALOAD_20151018.dmp log=F:\EXP_DATALOAD_20151018.log  rows=n;  DW_DAT_AAM_EAA_EAAM_LOGINFO
exp DATALOAD/DATALOAD@LHDORS file=F:\DW_DAT_AAM_EAA_EAAM_LOGINFO.dmp log=F:\DW_DAT_AAM_EAA_EAAM_LOGINFO.log  rows=n tables=DW_DAT_AAM_EAA_EAAM_LOGINFO  DIC_CHINA_ZONE

exp DATALOAD/DATALOAD@LHDORS file=F:\DW_DAT_AAM_EAA_EAAM_TEL_INF_SX.dmp log=F:\DW_DAT_AAM_EAA_EAAM_TEL_INF_SX.log  rows=n tables=DATALOAD.DW_DAT_AAM_EAA_EAAM_TEL_INF_SX;


exp DATALOAD/DATALOAD@ACERORS file=F:\DW_DAT_AAM_EAA_EAAM_TEL_INF_KF.dmp log=F:\DW_DAT_AAM_EAA_EAAM_TEL_INF_KF.log  rows=n tables=DW_DAT_AAM_EAA_EAAM_TEL_INF_KF;




imp DATALOAD/DATALOAD@ORS file=C:\EXP_DATALOAD_201510173.dmp LOG=D:\EXP_DATALOAD_201510173.LOG ignore=y 

imp  PARFILE=F:\PAR\DW1.PAR
imp  PARFILE=F:\PAR\DW2.PAR

imp system/manager@CFP00_CPZBZHCX PARFILE=e:/dbbackup/imp_full_cfp10/imp_full.par


IMP DATALOAD/DATALOAD@ORS FILE=F:\DBDATA_SDC\dmp\EXP_DATALOAD_20151011\EXP_DATALOAD_20151011.dmp LOG=F:\DBDATA_SDC\dmp\EXP_DATALOAD_20151011\IMP_DATALOAD_20151011.LOG FULL=Y

IMP DATALOAD/DATALOAD@ORS FILE=G:\DBDATA_SDC\DATALOAD\DATALOAD.dmp LOG=G:\DBDATA_SDC\DATALOAD\DATALOAD20150404.LOG FULL=Y

IMP DATALOAD/DATALOAD@ORS FILE=C:\EXP_DATALOAD_201510173.dmp LOG=D:\IMP_DATALOAD_201510173.LOG FULL=Y

IMP DATALOAD/DATALOAD@ORS FILE=F:\EXP_DATALOAD_20151018.dmp LOG=F:\EXP_DATALOAD_20151018.LOG FULL=Y

imp GRPT/GRPT@ORS file=C:\EXP_DATALOAD_201510173.dmp LOG=D:\EXP_DATALOAD_201510173.LOG ignore=y 





--删除空的表空间，但是不包含物理文件
drop tablespace tablespace_name;
--删除非空表空间，但是不包含物理文件
drop tablespace tablespace_name including contents;
--删除空表空间，包含物理文件
drop tablespace tablespace_name including datafiles;
--删除非空表空间，包含物理文件
drop tablespace tablespace_name including contents and datafiles;
--如果其他表空间中的表有外键等约束关联到了本表空间中的表的字段，就要加上CASCADE CONSTRAINTS
drop tablespace tablespace_name including contents and datafiles CASCADE CONSTRAINTS;


impdp DATALOAD/DATALOAD@192.168.24.249:/orcl transform=segment_attributes:n directory=wpdp_dir remap_schema=numen: ilanni dumpfile=140109.dmp logfile=1401092.log

impdp DATALOAD/DATALOAD@ORS151001  directory=DATA_PUMP_DIR  dumpfile=EXPDP_DATALOAD_20151001.DMP logfile=EXPDP_DATALOAD_20151001_IMPDP.log transform=segment_attributes:n

