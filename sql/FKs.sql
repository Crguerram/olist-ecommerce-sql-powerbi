ALTER TABLE dbo.orders
ADD CONSTRAINT FK_orders_customers
FOREIGN KEY (customer_id) REFERENCES dbo.customers(customer_id);

ALTER TABLE dbo.order_items
ADD CONSTRAINT FK_order_items_orders
FOREIGN KEY (order_id) REFERENCES dbo.orders(order_id);

ALTER TABLE dbo.order_items
ADD CONSTRAINT FK_order_items_products
FOREIGN KEY (product_id) REFERENCES dbo.products(product_id);

ALTER TABLE dbo.order_items
ADD CONSTRAINT FK_order_items_sellers
FOREIGN KEY (seller_id) REFERENCES dbo.sellers(seller_id);

ALTER TABLE dbo.order_payments
ADD CONSTRAINT FK_order_payments_orders
FOREIGN KEY (order_id) REFERENCES dbo.orders(order_id);

ALTER TABLE dbo.order_reviews
ADD CONSTRAINT FK_order_reviews_orders
FOREIGN KEY (order_id) REFERENCES dbo.orders(order_id);
