SELECT
  CONCAT(order_id, '_', item_id) AS order_item_id,
  order_id AS order_id,
  item_id AS item_id,
  product_id AS product_id,
  quantity AS quantity,
  list_price AS unit_price,
  discount AS discount,
  ROUND((list_price*(1-discount))*quantity,2) AS order_item_price
FROM {{ source('local_bike','order_items') }}