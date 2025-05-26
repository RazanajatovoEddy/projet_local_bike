SELECT
  --order 
  order_date AS order_date,
  --store
  store_id AS store_id,
  MAX(store_name) AS store_name,
  MAX(store_city) AS store_city, 
  --staff
  staff_id AS staff_id,
  MAX(CONCAT(staff_first_name,' ',staff_last_name)) AS staff_name,
  -- manager
  manager_id AS manager_id, 
  MAX(CONCAT(manager_first_name,' ',manager_last_name)) AS manager_first_name,
--metriques  
--order_item
  ROUND(SUM(order_item_total_price),2) AS order_item_total_price,
--order
  COUNT(DISTINCT order_id) AS order_count,
  ROUND(SUM(order_item_total_price)/COUNT(DISTINCT order_id),2) AS order_average_basket

FROM 
    {{ref("int_local_bike__one_big_table")}}
GROUP BY order_date,store_id,staff_id,manager_id
