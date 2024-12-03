SELECT
    c.continent,
    COUNT(e.emp_id) AS num_employees
FROM
    EMPLOYEE e
    JOIN COUNTRY c ON e.country = c.country
WHERE
    e.pub_id IS NOT NULL
GROUP BY
    c.continent;