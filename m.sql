SELECT
    d.discount,
    COUNT(s.order_num) AS total_orders
FROM
    DISCOUNT d
    JOIN SALE s ON d.discount_id = s.discount_id
GROUP BY
    d.discount;