SELECT 
id AS order_id,
customer_id,
order_date,
status as order_status

FROM {{ source('raw_data', 'orders')}}