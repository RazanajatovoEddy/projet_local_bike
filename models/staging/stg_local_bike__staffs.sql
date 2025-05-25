SELECT
  staff_id AS staff_id,
  first_name AS first_name,
  last_name AS last_name,
  email AS email,
  phone AS phone,
  active AS active,
  store_id AS store_id,
  SAFE_CAST(manager_id AS INT64) AS manager_id
FROM {{ source('local_bike','staffs') }}