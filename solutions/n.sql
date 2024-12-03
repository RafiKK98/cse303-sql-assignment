SELECT
    st.stor_name,
    SUM(s.quantity * t.price) AS total_sales
FROM
    SALE_t s
    JOIN STORE_t st ON s.stor_id = st.stor_id
    JOIN TITLES_t t ON s.title_id = t.title_id
    JOIN DISCOUNT_t d ON s.discount_id = d.discount_id
WHERE
    d.discount > 5
GROUP BY
    st.stor_name;