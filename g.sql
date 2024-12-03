SELECT
    CONCAT (a.au_fname, ' ', a.au_lname) AS author_name
FROM
    AUTHOR a
    JOIN TITLEAUTHOR ta ON a.au_id = ta.au_id
    JOIN TITLES t ON ta.title_id = t.title_id
WHERE
    t.pub_date BETWEEN DATE_ADD (t.pub_date, INTERVAL -25 YEAR) AND '2019-12-31';