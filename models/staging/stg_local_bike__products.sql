SELECT
  product_id AS product_id,
  product_name AS product_name,
  brand_id AS brand_id,
  category_id AS category_id,
  model_year AS model_year,
  list_price AS list_price
FROM {{ source('local_bike','products') }}