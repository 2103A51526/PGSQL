-- 1. WQTD all the emp from emp table.
select * from emp;

-- 2.	Display only employee names and salaries.
select ename, sal from emp;

-- 3.	Display unique job titles from the EMP table.
select DISTINCT job from emp;

-- 4.	Display employee details who work in department 30.
select * from emp where deptno = 30;

-- 5.	Display employees whose salary is greater than 2000.
select * from emp where sal > 2000;

-- 6.	Display employees whose commission is not null.
select * from emp where comm is not null;

-- 7.	Display employees whose job is ‘MANAGER’.
select * from emp where job = 'MANAGER';

-- 8.	Display employees hired after 01-JAN-1981.
select * from emp where hiredate > '1987-01-01';

-- 9.	Display employees working in department 10 or 20.
select * from emp where deptno in(10, 20);

-- 11.	Display employee names in alphabetical order.
select * FROM emp ORDER BY ename;

-- 12. Display employee whose name ends with 'N';
select * from emp where ename LIKE '%N';

-- 17.	Display employees with salaries not between 1500 and 3000.
SELECT * FROM emp WHERE sal NOT BETWEEN 1500 AND 3000;

-- 19.	Display employees who work in departments other than 20.
SELECT * FROM emp WHERE deptno <> 20;
-- 20. Display employees whose hiredate is before 01-JAN-1981.
select * from emp where hiredate > ('01-01-1987');

-- 21.    Display employees whose salary is greater than their 2000.
select ename, sal from emp where sal > 2000;

select * from emp where deptno = 10 or deptno = 30;
select * from emp where deptno in (10, 30);
select * from emp where manager is null;
select * from emp order by ename;
select * from emp where sal between 1000 and 2000;
select * from emp where ename like 'S%';
select * from emp where ename like '%N';
select * from emp where ename like '%A%';
select * from emp where job <> 'SALESMAN';
select ename, sal from emp where sal not between 1500 and 3000;
select * from emp where job = 'CLERK' and sal < 2500;
select * from emp where deptno <> 20;
select * from emp where deptno != 20;
select * from emp;
select * from emp where hiredate < '1981-01-01';
select * from emp where comm > sal;
select * from emp order by sal desc limit 5;
select * from emp order by sal desc fetch first 5 rows only;
select * from emp order by hiredate fetch first 1 rows only;
select max(sal) from emp where sal <  (select max(sal) from emp);
select * from (select emp.*, row_number() over (order by sal desc) as rank from emp) where rank = 2;
select * from emp order by hiredate desc limit 1;
select * from emp where extract(year from hiredate) = 1981;
select * from emp where hiredate between date '1981-01-01' and  '1981-12-31';
select ename, length(ename) as lengthOfName from emp;
select ename, upper(ename) from emp;
select ename, lower(ename) from emp;
select * from emp where TO_CHAR(hiredate, 'YYYY-MM') = '1981-09';
select ename from emp where hiredate = DATE '1980-12-17';
select ename, substring(ename from 1 for 3) as first_three_chars from emp;
select ename, substr(ename, 1, 3) as first_three_chars from emp;
select ename, substr(ename, 1, 2) as first_two_chars from emp;
select sal, sal*12 as annual_salary from emp;
select * from emp where sal < (select sal from emp where ename = 'ALLEN');
select * from emp where sal > (select sal from emp where ename = 'MARTIN');
select * from emp where job = (select job from emp where ename = 'SCOTT');
select * from emp where deptno = (select deptno from emp where ename = 'JONES');
select ename || '-' || length (ename) as length_of_ename from emp;
select * from emp where sal = (select sal from emp where ename = 'FORD');
select avg(sal) from emp where sal > (select sal from emp where deptno = 30);
select avg(sal) from emp where sal < (select max(sal) from emp where deptno = 30);
select * from emp where sal < (select avg(sal) from emp where deptno = 30);
SELECT * FROM emp e1 WHERE sal = (SELECT max(sal) FROM emp e2 WHERE e1.deptno = e2.deptno );
select deptno, count(*) as num_of_emp from emp group by deptno;
select job, count(*) as num_of_job_person from emp group by job;
select deptno, sum(Sal) as total_Salary from emp group by deptno;
select job, avg(sal) as average_Salary from emp group by job;
select ename, length(ename) from emp;
select ename, length(ename) from emp where length(ename) = 6;
select ename, initcap(ename) from emp;
select ename, reverse(ename) from emp;
select ename, substr(ename, 1, 3) from emp;
select ename, substr(ename, 1, 3) from emp;
select ename, substr(ename, 1, (char_length(ename) + 1) / 2) as first_half from emp;
select ename, substr(ename, ((char_length(ename) + 1) / 2) + 1) as last_half from emp;

