SELECT
  CONCAT(store_id, '_', product_id) AS stock_id,
  store_id AS store_id,
  product_id AS product_id,
  quantity AS quantity
FROM {{ source('local_bike','stocks') }}