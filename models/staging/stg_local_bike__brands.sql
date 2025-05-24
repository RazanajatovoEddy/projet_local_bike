SELECT
    brand_id AS brand_id,
    brand_name AS brand_name
FROM {{ source('local_bike','brands') }}