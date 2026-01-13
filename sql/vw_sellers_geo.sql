--para conectar sellers con geo
CREATE OR ALTER VIEW dbo.vw_sellers_geo AS
SELECT
  s.seller_id,
  s.seller_zip_code_prefix,
  s.seller_city,
  s.seller_state,
  dz.lat,
  dz.lng
FROM dbo.sellers s
LEFT JOIN dbo.dim_zip dz
  ON s.seller_zip_code_prefix = dz.zip_code_prefix;
GO