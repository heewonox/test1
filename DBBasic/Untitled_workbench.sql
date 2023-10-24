Create database if not exists university;
Use university;

Drop table if exists professor;

CREATE TABLE professor(
	id varchar(10) PRIMARY KEY,
    name varchar(10),
    age int
);

alter table professor
add dept varchar(10);

insert into professor(id, name, age, dept)
values
	('A1','김디비',40,'컴공'),
    ('A2','이운체',50,'컴공'),
    ('A3','박컴구',40,'산공');


UPDATE professor
SET dept = 'CE'
WHERE id = 'A3';

SELECT id, name, age, dept
FROM professor
WHERE age = 40;

DELETE FROM professor
WHERE id = 'A2';


