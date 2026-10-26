
    select sd.skill_id ,
    sd.skills ,
    count(sjd.job_id) as demand_count
    from job_postings_fact jp
    inner join skills_job_dim sjd on jp.job_id = sjd.job_id
    inner join skills_dim sd on sd.skill_id = sjd.skill_id
    where jp.salary_year_avg is not null
    group by  sd.skills , sd.skill_id
    order by demand_count desc
    