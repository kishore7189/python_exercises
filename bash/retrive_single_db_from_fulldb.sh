sed -n -e '/DROP TABLE.* `tablename_to_retrive`/,/UNLOCK/p' fulldump.sql > tablename_to_restore.sql

tablename_to_retrive = enter the table that to be retrived from backup

tablename_to_restore = restore the dump in the following sql file

SED command in UNIX is stands for stream editor and it can perform lot’s of function on file like, searching, find and replace, insertion or deletion. Though most common use of SED command in UNIX is for substitution or for find and replace. By using SED you can edit files even without opening it, which is much quicker way to find and replace something in file, than first opening that file in VI Editor and then changing it.

SED is a powerful text stream editor. Can do insertion, deletion, search and replace(substitution).
SED command in unix supports regular expression which allows it perform complex pattern matching.

sed = stream editor
-n = suppress automatic printing of pattern space
-n = do thing silent not in verbose mode
-e = stringing commands together using semi-colon(;)
DROP TABLE.* and UNLOCK TABLES - If we want to save a subset or table.
p = print and append to the file