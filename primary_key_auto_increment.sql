CREATE TABLE employee (
id inti AUTO_INCREMENT,
firstname varchar(20) NOT NULL,
middlename varchar(20),
lastname varchar(20) NOT NULL,
age int NOT NULL,
salary int NOT NULL,
location varchar(20) NOT NULL DEFAULT 'bangalore',  //default
PRIMARY KEY(id)
);
