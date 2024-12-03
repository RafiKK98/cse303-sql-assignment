SELECT
    st.stor_name,
    SUM(s.quantity) AS total_books_sold
FROM
    SALE_t s
    JOIN STORE_t st ON s.stor_id = st.stor_id
WHERE
    st.country = 'India'
    AND YEAR (s.saledate) = 2019
GROUP BY
    st.stor_name;