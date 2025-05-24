SELECT
  order_id AS order_id,
  customer_id AS customer_id,
  order_status AS order_status,
  order_date AS order_date,
  required_date AS required_date,
  shipped_date AS shipped_date,
  store_id AS store_id,
  staff_id AS staff_id
FROM {{ source('local_bike','orders') }}