SELECT order_id, COUNT(*) as count
FROM {{ ref('stg_local_bike__order') }}
GROUP BY order_id
HAVING COUNT(*) > 1
