SELECT
    c.continent,
    COUNT(DISTINCT ta.au_id) AS total_authors
FROM
    TITLEAUTHOR ta
    JOIN AUTHOR a ON ta.au_id = a.au_id
    JOIN COUNTRY c ON a.country = c.country
GROUP BY
    c.continent
HAVING
    COUNT(ta.title_id) >= 3;