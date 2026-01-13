--agregamos pagos para evitar duplicar ingresos porque esta tabla tiene varias filas por orden
CREATE OR ALTER VIEW dbo.vw_order_payments_agg AS
SELECT
  order_id,
  SUM(payment_value) AS payment_total,
  MAX(payment_installments) AS max_installments
FROM dbo.order_payments
GROUP BY order_id;
GO