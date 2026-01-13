--para conectar customer con ubicacion
CREATE OR ALTER VIEW dbo.vw_customers_geo AS
SELECT
  c.customer_id,
  c.customer_unique_id,
  c.customer_zip_code_prefix,
  c.customer_city,
  c.customer_state,
  dz.lat,
  dz.lng
FROM dbo.customers c
LEFT JOIN dbo.dim_zip dz
  ON c.customer_zip_code_prefix = dz.zip_code_prefix;
GO