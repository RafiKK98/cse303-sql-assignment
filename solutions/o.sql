SELECT
    t.type,
    SUM(t.price) AS total_price,
    AVG(t.price) AS avg_price,
    MAX(t.price) AS max_price,
    (
        SELECT
            COUNT(s.order_num)
        FROM
            SALE_t s
            JOIN TITLES_t t2 ON s.title_id = t2.title_id
        WHERE
            t2.type = 'business'
    ) AS total_business_orders
FROM
    TITLES_t t
GROUP BY
    t.type;