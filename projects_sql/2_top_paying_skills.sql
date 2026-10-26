with top_paying_jobs as(
    SELECT jp.job_id,
jp.job_title_short,
jp.job_location,
cd.name AS company_name,
jp.salary_year_avg as salary
from job_postings_fact jp 
inner join company_dim cd on jp.company_id = cd.company_id
where salary_year_avg is not null
group by jp.job_id, jp.job_title_short, jp.job_location, cd.name, jp.salary_year_avg
order by jp.salary_year_avg desc
limit 10  

)
select tp.* 
, sd.skills
from top_paying_jobs tp
 inner join skills_job_dim sjd on tp.job_id = sjd.job_id
 inner join skills_dim sd on sd.skill_id = sjd.skill_id


 