SELECT *
FROM {{ ref('int_local_bike__one_big_table') }}
WHERE order_item_total_price < 0