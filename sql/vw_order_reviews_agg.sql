--Agregamos reviews por orden (por si existieran múltiples).
CREATE OR ALTER VIEW dbo.vw_order_reviews_agg AS
SELECT
  order_id,
  AVG(CAST(review_score AS float)) AS review_score_avg,
  COUNT(*) AS review_count
FROM dbo.order_reviews
GROUP BY order_id;
GO