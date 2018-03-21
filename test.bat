
@echo off  
sqlplus cssp/cssp@gxcssp @H:\bat_sql\log.sql > log.txt 


set NLS_LANG=SIMPLIFIED CHINESE_CHINA.ZHS16GBK
sqlplus sys/123456@ORS as sysdba @F:\SDCDVD\数据\sql\BIAOKJN.sql > log.txt

exit