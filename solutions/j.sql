SELECT
    pub_name
FROM
    PUBLISHER_t
WHERE
    DATEDIFF (CURDATE (), pub_date) > 30 * 365;