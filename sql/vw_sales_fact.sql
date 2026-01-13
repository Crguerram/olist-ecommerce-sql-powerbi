--vista final de hechos
CREATE OR ALTER VIEW dbo.vw_sales_fact AS
SELECT
  oi.order_id,
  oi.order_item_id,
  o.customer_id,
  oi.product_id,
  oi.seller_id,

  o.order_status,
  o.order_purchase_timestamp,
  o.order_approved_at,
  o.order_delivered_carrier_date,
  o.order_delivered_customer_date,
  o.order_estimated_delivery_date,

  oi.shipping_limit_date,
  oi.price,
  oi.freight_value,

  -- Revenue “a nivel item”: usamos price + freight (en Olist payment_total también sirve, pero está a nivel order)
  (oi.price + oi.freight_value) AS item_gmv,

  -- Métricas logísticas
  CASE 
    WHEN o.order_delivered_customer_date IS NULL THEN NULL
    ELSE DATEDIFF(DAY, o.order_purchase_timestamp, o.order_delivered_customer_date)
  END AS delivery_days,

  CASE
    WHEN o.order_delivered_customer_date IS NULL OR o.order_estimated_delivery_date IS NULL THEN NULL
    WHEN o.order_delivered_customer_date <= o.order_estimated_delivery_date THEN 1
    ELSE 0
  END AS on_time_delivery_flag,

  -- Producto / categoría (en inglés si tienes la traducción)
  p.product_category_name AS category_pt,
  pct.product_category_name_english AS category_en,

  -- Pagos agregados y reviews agregadas
  pa.payment_total,
  ra.review_score_avg,
  ra.review_count

FROM dbo.order_items oi
JOIN dbo.orders o
  ON oi.order_id = o.order_id
LEFT JOIN dbo.products p
  ON oi.product_id = p.product_id
LEFT JOIN dbo.product_category_translation pct
  ON p.product_category_name = pct.product_category_name
LEFT JOIN dbo.vw_order_payments_agg pa
  ON oi.order_id = pa.order_id
LEFT JOIN dbo.vw_order_reviews_agg ra
  ON oi.order_id = ra.order_id;
GO
