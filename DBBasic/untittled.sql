CREATE DATABASE JJ;
USE JJ;

drop table if exists student;

create table student(
	id varchar(10) not null,
    name varchar(10) not null,
    grade int default 0,
    primary key(id)
);

alter table student
	add dept varchar(10);

select * from student;
