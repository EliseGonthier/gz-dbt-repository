SELECT 
DISTINCT (orders_id) AS orders_id
, date_date
, SUM (revenue) AS revenue
, SUM (quantity) AS quantity
, SUM (purchase_price) AS purchase_price
, SUM(margin) AS margin 
FROM {{ ref('int_sales_margin') }}
GROUP BY 
date_date
, orders_id