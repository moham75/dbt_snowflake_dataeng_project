SELECT
    a.order_date,
    a.order_id,
    SUM(total_price) AS total_price,

FROM {{ ref('stg_orders')}} a LEFT JOIN {{ ref('stg_order_items')}} b ON a.order_id = b.order_id
GROUP BY 
    a.order_date,
    a.order_id