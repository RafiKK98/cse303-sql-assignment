SELECT
    COUNT(*) AS native_employees
FROM
    EMPLOYEE
WHERE
    city IN (
        SELECT
            city
        FROM
            COUNTRY
        WHERE
            EMPLOYEE.country = COUNTRY.country
    );