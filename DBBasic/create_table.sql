create database if not exists company;
use company;
drop table if exists employ;
drop table if exists department;

CREATE TABLE department (
    dno INTEGER,
    dname VARCHAR(20),
    loc VARCHAR(20),
    CONSTRAINT pk_dept PRIMARY KEY (dno)
);

CREATE TABLE employ (
    eno INTEGER,
    ename VARCHAR(20),
    job VARCHAR(20),
    mgr INTEGER,
    hiredate DATE,
    sal INTEGER,
    comm INTEGER,
    deptno INTEGER,
    grade integer,
    CONSTRAINT pk_emp PRIMARY KEY (eno),
    CONSTRAINT fk_deptno FOREIGN KEY (deptno) REFERENCES department (dno)
);

INSERT INTO department (dno, dname, loc)
VALUES
  (10, 'ACCOUNTING', 'NEW YORK'),
  (20, 'RESEARCH', 'DALLAS'),
  (30, 'SALES', 'CHICAGO'),
  (40, 'OPERATIONS', 'BOSTON');
  

INSERT INTO employ (eno, ename, job, hiredate, sal, comm, deptno)
VALUES
  (7369, 'SMITH', 'CLERK',  '1980-12-17', 800, NULL, NULL),
  (7499, 'ALLEN', 'SALESMAN',  '1981-02-20', 1600, 300, 30),
  (7521, 'WARD', 'SALESMAN',  '1981-02-22', 1250, 500, 30),
  (7566, 'JONES', 'MANAGER',  '1981-04-02', 2975, NULL, 20),
  (7654, 'MARTIN', 'SALESMAN',  '1981-09-28', 1250, 1400, 30),
  (7698, 'BLAKE', 'MANAGER',  '1981-05-01', 2850, NULL, 30),
  (7782, 'CLARK', 'MANAGER',  '1981-06-09', 2450, NULL, 10),
  (7788, 'SCOTT', 'ANALYST',  '1982-12-09', 3000, NULL, 20),
(7839, 'KING', 'PRESIDENT',  '1981-11-17', 5000, NULL, 10),
  (7844, 'TURNER', 'SALESMAN',  '1981-09-08', 1500, 0, 30),
  (7876, 'ADAMS', 'CLERK',  '1983-01-12', 1100, NULL, 20),
  (7900, 'JAMES', 'CLERK', '1981-12-03', 950, NULL, 30),
  (7902, 'FORD', 'ANALYST',  '1981-12-03', 3000, NULL, 20),
  (7934, 'MILLER', 'CLERK', '1982-01-23', 1300, NULL, 10);

-- Suicide

-- 1
select * from employ
where deptno=10;

-- 2
select eno,hiredate,deptno from employ
where eno=7369;

-- 3
select * from employ
where ename="ALLEN";

-- 4
select ename,eno,sal from employ
where hiredate="1983-01-12";

-- 5
select * from employ
where job!="MANAGER";

-- 6
select ename,sal,deptno from employ
where sal>=800;

-- 7
select * from employ
where hiredate<="1981-12-01";

-- 8
select * from employ
order by sal desc;

-- 9 조인이라는데..? 자살하고싶다...
select * from employ e, department d
where e.deptno=30 and e.deptno=d.dno and sal>=1500;

select e.ename as "Name_", d.dname as "Department_", e.sal as "Salary_" from employ e, department d
where e.deptno=30 and e.deptno=d.dno and sal>=1500;

-- 10 group by??? 자살하고싶다.....씨발....
select job,count(x) from employ
group by job having count(x)>=4;

-- 과제임

-- 1

SELECT dname from employ e,department d
WHERE e.ename="ALLEN" AND e.deptno=d.dno;

-- 2

SELECT eno, ename, hiredate, sal from employ e
where e.deptno=(
	SELECT deptno from employ e
	where e.ename="JONES"
);

-- 3

SELECT eno, ename, sal from employ
WHERE sal>(
	SELECT MAX(sal) from employ
	WHERE deptno=30
);

-- 4

SELECT dname from employ e,department d
WHERE e.ename="ALLEN" AND e.deptno=d.dno;

-- 5

SELECT eno, ename, sal from employ
WHERE sal>(
	SELECT MIN(sal) from employ
	WHERE deptno=30
);