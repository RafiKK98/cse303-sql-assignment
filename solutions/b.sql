UPDATE SALE_t
SET
    discount_id = (
        SELECT
            discount_id
        FROM
            DISCOUNT_t
        WHERE
            discount = 25
    )
WHERE
    title_id = (
        SELECT
            title_id
        FROM
            TITLES_t
        WHERE
            titlename = 'Flight runner'
    )
    AND saledate > '2019-03-31';