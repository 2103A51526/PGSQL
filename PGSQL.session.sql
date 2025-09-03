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
select * from emp where hiredate > ('01-01-1987');
select * from emp;
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