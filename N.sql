SELECT a.tablespace_name "��ռ���",
a.bytes / 1024 / 1024 "��ռ��С(M)",
(a.bytes - b.bytes) / 1024 / 1024 "��ʹ�ÿռ�(M)",
b.bytes / 1024 / 1024 "���пռ�(M)",
round(((a.bytes - b.bytes) / a.bytes) * 100, 2) "ʹ�ñ�"
FROM (SELECT tablespace_name, sum(bytes) bytes
FROM dba_data_files
GROUP BY tablespace_name) a,
(SELECT tablespace_name, sum(bytes) bytes, max(bytes) largest
FROM dba_free_space
GROUP BY tablespace_name) b
WHERE a.tablespace_name = b.tablespace_name
ORDER BY ((a.bytes - b.bytes) / a.bytes) DESC
