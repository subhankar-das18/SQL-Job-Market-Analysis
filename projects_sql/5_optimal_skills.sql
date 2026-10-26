WITH skill_demand AS (
    SELECT
        sd.skill_id,
        sd.skills,
        COUNT(sjd.job_id) AS demand_count
    FROM job_postings_fact jp
    INNER JOIN skills_job_dim sjd ON jp.job_id = sjd.job_id
    INNER JOIN skills_dim sd      ON sd.skill_id = sjd.skill_id
    WHERE jp.salary_year_avg IS NOT NULL
    GROUP BY sd.skill_id, sd.skills          
),

average_salary AS (
    SELECT
        sd.skill_id,
        sd.skills,
        ROUND(AVG(jp.salary_year_avg), 2) AS avg_salary
    FROM job_postings_fact jp
    INNER JOIN skills_job_dim sjd ON jp.job_id = sjd.job_id
    INNER JOIN skills_dim sd      ON sd.skill_id = sjd.skill_id
    WHERE jp.salary_year_avg IS NOT NULL
    GROUP BY sd.skill_id, sd.skills          
)

SELECT
    sd.skill_id,
    sd.skills,
    sd.demand_count,
    av.avg_salary
FROM skill_demand sd
INNER JOIN average_salary av ON sd.skill_id = av.skill_id
group BY sd.skill_id, sd.skills, sd.demand_count, av.avg_salary
having sd.demand_count > 10
ORDER BY av.avg_salary DESC, 
sd.demand_count DESC           
