-- Step 3: Run this script to populate the tables from your CSV files.

-- NOTE: Replace 'C:/path/to/your/project/' with your local file path.

COPY public.company_dim
FROM 'C:/path/to/your/project/data/csv_files/company_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY public.skills_dim
FROM 'C:/path/to/your/project/data/csv_files/skills_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY public.job_postings_fact
FROM 'C:/path/to/your/project/data/csv_files/job_postings_fact.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY public.skills_job_dim
FROM 'C:/path/to/your/project/data/csv_files/skills_job_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');