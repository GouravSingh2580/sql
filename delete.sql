delete from employee where id=3;
delete from employee; --delete whole set


-- Alter is to alter the structure of the table.
alter table employee add column jobtitle varchar(50);
alter table employee drop column jobtitle;
alter table employee modify column firstname varchar(30);
alter table employee drop primary key;
alter table employee add primary key (id);


- 1. DELETE : 
-- Basically, it is a Data Manipulation Language Command (DML). It is used to delete one or more tuples of a table. With the help of the “DELETE” command, we can either delete all the rows in one go or can delete rows one by one. i.e., we can use it as per the requirement or the condition using the Where clause. It is comparatively slower than the TRUNCATE command. The TRUNCATE command does not remove the structure of the table.

-- SYNTAX – 
-- If we want to delete all the rows of the table:
-- DELETE from;
-- SYNTAX – 
-- If we want to delete the row of the table as per the condition then we use the WHERE clause,
-- DELETE from  WHERE  ;
-- Note – Here we can use the “ROLLBACK” command to restore the tuple because it does not auto-commit.

- 2. DROP : 
-- It is a Data Definition Language Command (DDL). It is used to drop the whole table. With the help of the “DROP” command we can drop (delete) the whole structure in one go i.e. it removes the named elements of the schema. By using this command the existence of the whole table is finished or say lost. 

-- SYNTAX – 
-- If we want to drop the table:
-- DROP table ;
-- Note – Here we can’t restore the table by using the “ROLLBACK” command because it auto commits.

- 3. TRUNCATE : 
-- It is also a Data Definition Language Command (DDL). It is used to delete all the rows of a relation (table) in one go. With the help of the “TRUNCATE” command, we can’t delete the single row as here WHERE clause is not used. By using this command the existence of all the rows of the table is lost. It is comparatively faster than the delete command as it deletes all the rows fastly. 

-- SYNTAX – 
-- If we want to use truncate :
-- TRUNCATE;
-- Note – Here we can’t restore the tuples of the table by using the “ROLLBACK” command.
