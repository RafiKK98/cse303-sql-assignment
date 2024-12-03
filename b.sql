UPDATE SALE
SET
    discount_id = (
        SELECT
            discount_id
        FROM
            DISCOUNT
        WHERE
            discount = 25
    )
WHERE
    title_id = (
        SELECT
            title_id
        FROM
            TITLES
        WHERE
            titlename = 'Flight runner'
    )
    AND saledate > '2019-03-31';