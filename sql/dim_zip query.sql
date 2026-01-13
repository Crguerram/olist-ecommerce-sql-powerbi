--Normalizar geolocation a una dimensión: dim_zip
SELECT
  geolocation_zip_code_prefix AS zip_code_prefix,
  MAX(geolocation_state)      AS state,
  MAX(geolocation_city)       AS city,
  AVG(CAST(geolocation_lat AS float)) AS lat,
  AVG(CAST(geolocation_lng AS float)) AS lng
INTO dbo.dim_zip
FROM dbo.geolocation
WHERE geolocation_lat IS NOT NULL
  AND geolocation_lng IS NOT NULL
GROUP BY geolocation_zip_code_prefix;
GO

SELECT COUNT(*) AS dim_zip_rows FROM dbo.dim_zip;