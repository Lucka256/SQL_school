--1.Vyber 10 programatoru, kteri jsou ve spolecnosti nejkratsi dobu. 
select FIRST_NAME, LAST_NAME, JOB_TITLE, HIRE_DATE 
from  
( 
    select FIRST_NAME, LAST_NAME, JOB_ID, HIRE_DATE 
    from hr.employees 
    where JOB_ID = 'IT_PROG' 
    order by HIRE_DATE desc 
) hire 
left join hr.jobs on hire.JOB_ID = hr.jobs.JOB_ID
where rownum <= 10

--2.Vyber 10 Sales Manageru, kteri jsou ve spolecnosti nejdelsi dobu
select FIRST_NAME, LAST_NAME, JOB_TITLE, HIRE_DATE 
from  
( 
    select FIRST_NAME, LAST_NAME, JOB_ID, HIRE_DATE 
    from hr.employees 
    where JOB_ID = 'SA_MAN' 
    order by HIRE_DATE asc 
) hire 
left join hr.jobs on hire.JOB_ID = hr.jobs.JOB_ID
where rownum <= 10

--3.Kolik firma mesicne vyplaci zamestnancum na vyplatach rozdeleno podle pozic.
select JOB_TITLE, SUM_SALARY 
from 
( 
   select JOB_ID, SUM(SALARY) as SUM_SALARY 
   from hr.employees 
   group by JOB_ID 
) hire 
left join hr.jobs on hire.JOB_ID = hr.jobs.JOB_ID 
order by SUM_SALARY asc
