-- PKs simples
ALTER TABLE dbo.customers ADD CONSTRAINT PK_customers PRIMARY KEY (customer_id);
ALTER TABLE dbo.sellers   ADD CONSTRAINT PK_sellers   PRIMARY KEY (seller_id);
ALTER TABLE dbo.products  ADD CONSTRAINT PK_products  PRIMARY KEY (product_id);
ALTER TABLE dbo.orders    ADD CONSTRAINT PK_orders    PRIMARY KEY (order_id);
--Se definió PK compuesta (review_id, order_id) para garantizar unicidad de reseñas por orden.
ALTER TABLE dbo.order_reviews
ADD CONSTRAINT PK_order_reviews PRIMARY KEY (review_id, order_id);


-- PKs compuestas (hechos)
ALTER TABLE dbo.order_items
ADD CONSTRAINT PK_order_items PRIMARY KEY (order_id, order_item_id);

ALTER TABLE dbo.order_payments
ADD CONSTRAINT PK_order_payments PRIMARY KEY (order_id, payment_sequential);

-- PK dim_zip
ALTER TABLE dbo.dim_zip
ADD CONSTRAINT PK_dim_zip PRIMARY KEY (zip_code_prefix);