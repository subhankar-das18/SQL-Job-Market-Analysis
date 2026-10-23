# SQL Job Market Analysis

An SQL project that explores job posting data to find out which roles pay the most, which skills are in demand, and which skills are worth learning.

---

## Table of Contents

1. [Project Overview](#1-project-overview)
2. [Questions Answered](#2-questions-answered)
3. [Tools Used](#3-tools-used)
4. [Project Structure](#4-project-structure)
5. [Dataset](#5-dataset)
6. [Setup Instructions](#6-setup-instructions)
7. [Analysis Walkthrough](#7-analysis-walkthrough)
8. [Key Findings](#8-key-findings)
9. [What I Learned](#9-what-i-learned)
10. [Author](#10-author)

---

## 1. Project Overview

This project uses SQL to analyze a job postings dataset. It covers loading the data into a database, writing queries from basic to advanced, and turning the results into insights about the job market.

**Goals**
- Practice SQL on a realistic, multi-table dataset
- Identify top-paying jobs and the skills they require
- Find the most in-demand skills
- Find skills that are both in demand and well paid

---

## 2. Questions Answered

1. What are the top-paying jobs for my role?
2. What skills are required for those top-paying jobs?
3. What are the most in-demand skills?
4. Which skills are associated with higher salaries?
5. What are the most optimal skills to learn (high demand and high pay)?

> Edit this list to match the questions your queries actually answer.

---

## 3. Tools Used

| Tool | Purpose |
|------|---------|
| SQL (PostgreSQL) | Querying and analyzing the data |
| VS Code | Writing and running queries |
| Git & GitHub | Version control and sharing the project |


---

## 4. Project Structure

```
SQL-Job-Market-Analysis/
│
├── assets/            # Images and charts used in this README
├── data/
│   └── csv_files/     # Dataset files (large files are zipped)
├── sql_load/          # Scripts to create tables and load the CSV data
├── advanced_sql/      # Analysis queries (joins, CTEs, subqueries, etc.)
├── .gitignore         # Files excluded from Git
└── README.md          # Project documentation
```

---

## 5. Dataset

The data is split across several related tables:

| Table | Description |
|-------|-------------|
| `job_postings_fact` | One row per job posting (title, location, salary, date, etc.) |
| `company_dim` | Company details |
| `skills_dim` | List of skills |
| `skills_job_dim` | Links jobs to the skills they require |

> Adjust the table names above if yours differ.

**Large files:** `job_postings_fact.csv` and `job_postings_fact_validated.csv` are over 100 MB, so they are stored as `.zip` files in `data/csv_files/` (the raw `.csv` versions are excluded through `.gitignore`).

---

## 6. Setup Instructions

**Step 1: Clone the repository**
```bash
git clone https://github.com/subhankar-das18/SQL-Job-Market-Analysis.git
cd SQL-Job-Market-Analysis
```

**Step 2: Unzip the large datasets**

Extract the zip files inside `data/csv_files/` so the `.csv` files sit in the same folder.

On Windows (PowerShell):
```powershell
Expand-Archive data/csv_files/job_postings_fact.zip -DestinationPath data/csv_files
Expand-Archive data/csv_files/job_postings_fact_validated.zip -DestinationPath data/csv_files
```

**Step 3: Create the database and tables**

Run the scripts in `sql_load/` in order (create the database, create the tables, then load the CSVs).

**Step 4: Run the analysis**

Open the queries in `advanced_sql/` and run them against your database.

---

## 7. Analysis Walkthrough

Each query file answers one question. Replace the examples below with your own files.

### 7.1 Top-Paying Jobs
- **Goal:** Find the highest-paying roles that have a listed salary.
- **File:** `advanced_sql/[file_name].sql`
- **Approach:** Filter by job title and non-null salary, order by salary descending.

### 7.2 Skills for Top-Paying Jobs
- **Goal:** See which skills the top-paying jobs ask for.
- **File:** `advanced_sql/[file_name].sql`
- **Approach:** Use a CTE for the top jobs, then join with the skills tables.

### 7.3 Most In-Demand Skills
- **Goal:** Count how often each skill appears in job postings.
- **File:** `advanced_sql/[file_name].sql`
- **Approach:** Join the tables, group by skill, and count.

### 7.4 Skills vs. Salary
- **Goal:** Find the average salary linked to each skill.
- **File:** `advanced_sql/[file_name].sql`
- **Approach:** Join tables and use `AVG()` on salary, grouped by skill.

### 7.5 Optimal Skills to Learn
- **Goal:** Combine demand and salary to rank skills.
- **File:** `advanced_sql/[file_name].sql`
- **Approach:** Combine the demand and salary queries and filter by minimum job count.

---

## 8. Key Findings

> Fill this in after running your queries. Add screenshots or charts into the `assets/` folder and link them here, for example: `![Top skills](assets/top_skills.png)`

- **Finding 1:** [e.g., The top-paying roles offer salaries of $X or more]
- **Finding 2:** [e.g., SQL and Python appear in most postings]
- **Finding 3:** [e.g., Cloud skills are linked to higher average pay]

---

## 9. What I Learned

- Writing multi-table `JOIN` queries
- Using CTEs and subqueries to break down complex problems
- Aggregating data with `GROUP BY`, `COUNT()`, and `AVG()`
- Loading large CSV files into a database
- Handling large files in Git and GitHub (`.gitignore`, zipping files)

---

## 10. Author

**Subhankar Das**
GitHub: [subhankar-das18](https://github.com/subhankar-das18)

If you found this project useful, consider giving it a star.
