SELECT
    CONCAT (a.au_fname, ' ', a.au_lname) AS author_name,
    MAX(s.quantity * t.price) AS revenue
FROM
    AUTHOR_t a
    JOIN TITLEAUTHOR_t ta ON a.au_id = ta.au_id
    JOIN TITLES_t t ON ta.title_id = t.title_id
    JOIN SALE_t s ON t.title_id = s.title_id
WHERE
    YEAR (s.saledate) = 2019
GROUP BY
    a.au_id
ORDER BY
    revenue DESC
LIMIT
    1;