SELECT
    COUNT(*) AS native_employees
FROM
    EMPLOYEE_t
WHERE
    country IN (
        SELECT
            country_t
        FROM
            COUNTRY_t
    );