/*
Application of REPLACE() - to replace any file with any extension to another

SQl task - replace file with extension .txt to .csv



*/
SELECT
'report.txt' AS old_file_name,
REPLACE('report.txt','.txt','.csv') AS new_file_name