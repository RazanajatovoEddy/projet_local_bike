SELECT
    customer_id AS customer_id,
    first_name AS first_name, 
    last_name AS last_name, 
    COALESCE(phone,'') AS phone, 
    email AS email, 
    street AS street, 
    city AS city, 
    state AS state, 
    zip_code AS zip_code 
FROM {{ source('local_bike','customers') }}