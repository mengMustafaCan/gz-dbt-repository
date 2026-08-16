SELECT 
    date_date,
    orders_id,
    SUM(revenue) AS total_revenue,
    SUM(quantity) AS total_quantity,
    COUNT(*) AS nb_products
FROM  {{ref("stg_raw__sales")}}
GROUP BY date_date , orders_id