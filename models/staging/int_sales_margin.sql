SELECT 
    s.products_id, 
    s.date_date, 
    s.orders_id,
    s.revenue, 
    s.quantity, 
    CAST(purchase_price AS float64) AS purchase_price, 
    ROUND(s.quantity*CAST(p.purchase_price AS float64),2) AS purchase_cost,
    s.revenue - ROUND(s.quantity*CAST(p.purchase_price AS float64),2) AS margin
FROM {{ ref("stg_raw__sales")}} s
JOIN {{ ref("stg_raw__product")}} p 
    USING (products_id)