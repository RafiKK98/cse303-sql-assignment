SELECT
    j.job_id,
    COUNT(e.emp_id) AS total_employees
FROM
    JOB_t j
    JOIN EMPLOYEE_t e ON j.job_id = e.job_id
GROUP BY
    j.job_id;