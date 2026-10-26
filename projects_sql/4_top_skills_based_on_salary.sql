
select round(avg(jp.salary_year_avg), 2) as avg_salary
, sd.skills
from job_postings_fact jp
 inner join skills_job_dim sjd on jp.job_id = sjd.job_id
 inner join skills_dim sd on sd.skill_id = sjd.skill_id
 where jp.salary_year_avg is not null
 group by sd.skills
 order by avg_salary desc
 limit 25 