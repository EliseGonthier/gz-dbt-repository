SELECT
  EXTRACT(MONTH FROM date_date) AS date_month,

  SUM(ads_margin)         AS ads_margin,
  SUM(operational_margin) AS operational_margin,
  SUM(ads_cost)           AS ads_cost,
  SUM(ads_impression)     AS ads_impression,
  SUM(ads_clicks)         AS ads_clicks,
  SUM(quantity)           AS quantity,
  SUM(revenue)            AS revenue,
  SUM(purchase_cost)      AS purchase_cost,
  SUM(margin)             AS margin,
  SUM(shipping_fee)       AS shipping_fee,
  SUM(log_cost)           AS log_cost,
  SUM(ship_cost)          AS ship_cost,

  AVG(average_basket)     AS average_basket

FROM {{ ref('finance_campaigns_day') }}
GROUP BY
  date_month
ORDER BY
  date_month