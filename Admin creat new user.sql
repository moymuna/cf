alter session set container =orclpdba;

create user demo
identified by demo;

grant create session ,create table,create sequence,create view
to demo;

create role student;


grant create table , create view, select any table, insert any table 
to student;
 
 grant student to demo;
 
 alter user demo quota unlimited on users;
 
 