
WITH employees as (
SELECT 
id
,name
,email
,phone
,company
,job_title
,address
,salary
,created_at
FROM public.employees
)

SELECT * FROM   employees