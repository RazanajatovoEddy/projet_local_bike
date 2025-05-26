SELECT
  --order 
  order_id AS order_id,
  order_status AS order_status,
  order_date AS order_date,
  --store
  store_id AS store_id,
  store_name AS store_name,
  store_city AS store_city,
  --customers
  customer_id AS customer_id,
  customer_first_name AS customer_first_name,
  customer_last_name AS customer_last_name,
  customer_phone AS customer_phone,
  customer_email AS customer_email,
  customer_city AS customer_city,
  customer_state AS customer_state,
  customer_zip_code AS customer_zip_code,
  --product
  product_id AS product_id,
  product_name AS product_name,    
  product_model_year AS product_model_year,
  product_price AS product_price,
  --order_item
  order_item_quantity AS order_item_quantity,
  order_item_unit_price AS order_item_unit_price,
  order_item_discount AS order_item_discount,
  order_item_total_price AS order_item_total_price, 
  --brand
  brand_id AS brand_id,
  brand_name AS brand_name,
  --categorie
  category_id AS category_id,
  category_name AS category_name,
  --staff
  staff_id AS staff_id,
  staff_first_name AS staff_first_name,
  staff_last_name AS staff_last_name,
  -- manager
  manager_id AS manager_id, 
  manager_first_name AS manager_first_name,
  manager_last_name AS manager_last_name
FROM {{ref("int_local_bike__one_big_table")}}