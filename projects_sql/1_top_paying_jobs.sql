SELECT jp.job_id,
jp.job_title_short,
jp.job_location,
cd.name AS company_name,
jp.salary_year_avg as salary
from job_postings_fact jp 
left join company_dim cd on jp.company_id = cd.company_id
where salary_year_avg is not null
order by jp.salary_year_avg desc
limit 10   
