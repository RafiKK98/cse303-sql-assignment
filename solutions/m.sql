SELECT
    d.discount,
    COUNT(s.order_num) AS total_orders
FROM
    DISCOUNT_t d
    JOIN SALE_t s ON d.discount_id = s.discount_id
GROUP BY
    d.discount;