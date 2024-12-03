SELECT
    t.type,
    SUM(s.quantity) AS total_books_sold
FROM
    TITLES t
    JOIN SALE s ON t.title_id = s.title_id
GROUP BY
    t.type
HAVING
    SUM(s.quantity) > 20000;