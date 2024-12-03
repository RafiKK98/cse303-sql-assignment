SELECT
    e1.fname AS employee_name,
    CASE
        WHEN e1.pub_id IS NOT NULL THEN CONCAT (e2.fname, ' ', e2.lname)
        ELSE CONCAT (e3.fname, ' ', e3.lname)
    END AS manager_or_supervisor_name
FROM
    EMPLOYEE_t e1
    LEFT JOIN EMPLOYEE_t e2 ON e1.managerID = e2.emp_id
    LEFT JOIN EMPLOYEE_t e3 ON e1.supervisorID = e3.emp_id;