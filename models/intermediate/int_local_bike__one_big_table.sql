SELECT 
  --order
  o.order_id AS order_id,
  o.order_status AS order_status,
  o.order_date AS order_date,
  --store
  str.store_id AS store_id,
  str.store_name AS store_name,
  str.city AS store_city,
  --customers
  cst.customer_id AS customer_id,
  cst.first_name AS customer_first_name,
  cst.last_name AS customer_last_name,
  cst.phone AS customer_phone,
  cst.email AS customer_email,
  cst.city AS customer_city,
  cst.state AS customer_state,
  cst.zip_code AS customer_zip_code,
  --product
  p.product_id AS product_id,
  p.product_name AS product_name,    
  p.model_year AS product_model_year,
  p.list_price AS product_price,
  --order_item
  oi.quantity AS order_item_quantity,
  oi.unit_price AS order_item_unit_price,
  oi.discount AS order_item_discount,
  oi.order_item_price AS order_item_total_price, 
  --brand
  b.brand_id AS brand_id,
  b.brand_name AS brand_name,
  --categorie
  c.category_id AS category_id,
  c.category_name AS category_name,
  --staff
  stf.staff_id AS staff_id,
  stf.first_name AS staff_first_name,
  stf.last_name AS staff_last_name,
  -- manager
  stf.manager_id AS manager_id, 
  mng.first_name AS manager_first_name,
  mng.last_name AS manager_last_name

FROM {{ref("stg_local_bike__orders")}} o
    LEFT JOIN {{ref("stg_local_bike__stores")}} str ON str.store_id = o.store_id
    LEFT JOIN {{ref("stg_local_bike__customers")}} cst ON cst.customer_id = o.customer_id
    LEFT JOIN {{ref("stg_local_bike__order_items")}} oi ON oi.order_id = o.order_id
    LEFT JOIN {{ref("stg_local_bike__products")}} p ON p.product_id = oi.product_id
    --LEFT JOIN {{ref("stg_local_bike__stocks")}} stc ON stc.store_id = str.store_id AND stc.product_id = oi.product_id
    LEFT JOIN {{ref("stg_local_bike__brands") }} b ON b.brand_id = p.brand_id
    LEFT JOIN {{ref("stg_local_bike__categories")}} c ON c.category_id = p.category_id
    LEFT JOIN {{ref("stg_local_bike__staffs")}} stf ON stf.staff_id = o.staff_id
    LEFT JOIN {{ref("stg_local_bike__staffs")}} mng ON mng.staff_id = stf.manager_id
ORDER BY o.order_id

