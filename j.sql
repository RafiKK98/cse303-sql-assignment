SELECT
    pub_name
FROM
    PUBLISHER
WHERE
    DATEDIFF (CURDATE (), pub_date) > 30 * 365;