
-- Najdi zaměstnance s nejnižším platem a vypiš ho
select first_name, last_name, concat(salary, ' CZK1') salary
from 
(
    select first_name, last_name, salary
    from hr.employees
    order by salary asc
)
where rownum = 1


-- Najdi zaměstnance s nejvyšším platem a vypiš ho
select First_name, last_name, concat(salary,' CZK') salary
from
(
    select first_name, last_name, salary
    from hr.employees
    order by salary desc
)
where rownum = 1

-- Zobraz průměrné platy zaměstnanců dle zařazení (JOB_ID) pomocí GROUP BY
select *
from 
(
    SELECT hr.jobs.job_title, AVG(SALARY) as AVERANGE_SALARY
    FROM HR.EMPLOYEES
    left join hr.jobs on hr.employees.job_id = hr.jobs.job_id 
    GROUP BY hr.jobs.job_title
)
order by AVERANGE_SALARY desc

-- Vypiš FIRST_NAME a počet výskytů z tabulky HR.EMPLOYEES  (GROUP BY)
SELECT FIRST_NAME, count(FIRST_NAME) as COUNT_FIRST_NAME
FROM HR.EMPLOYEES 
GROUP BY FIRST_NAME

-- 	Vypiš FIRST_NAME a počet výskytů z tabulky HR.EMPLOYEES  (GROUP BY) seřazených sestupně podle počtu výskytů
SELECT FIRST_NAME, count(FIRST_NAME) as COUNT_FIRST_NAME
FROM HR.EMPLOYEES 
GROUP BY FIRST_NAME
order by COUNT_FIRST_NAME desc


-- Vypiš TOP 10 nejčastějších FIRST_NAME z tabulky HR.EMPLOYEES
select *
from
(
    SELECT count(JOB_ID) as COUNT_JOB_ID, FIRST_NAME 
	FROM HR.EMPLOYEES 
	GROUP BY FIRST_NAME 
	order by COUNT_JOB_ID desc
)
where rownum<=10

-- Které oddělení má nejvíce 
select DEPARTMENT_NAME, COUNT_EMPLOYEE_ID
from
(
    SELECT DEPARTMENT_ID, count(EMPLOYEE_ID) as COUNT_EMPLOYEE_ID
    FROM HR.EMPLOYEES
    group by DEPARTMENT_ID
    order by COUNT_EMPLOYEE_ID desc
) emp
left join hr.departments on emp.DEPARTMENT_ID = hr.departments.DEPARTMENT_ID
where Department_NAME is NOT NULL
order by COUNT_EMPLOYEE_ID desc


select* from hr.departments
