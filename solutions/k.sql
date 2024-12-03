SELECT
    c.continent,
    COUNT(DISTINCT ta.au_id) AS total_authors
FROM
    TITLEAUTHOR_t ta
    JOIN AUTHOR_t a ON ta.au_id = a.au_id
    JOIN COUNTRY_t c ON a.country = c.country
GROUP BY
    c.continent
HAVING
    COUNT(ta.title_id) >= 3;