**Archivos Originales:**

olist_orders_dataset: tabla central que contiene el registro de cada pedido realizado, sus fechas clave (compra, aprobación, entrega) y el estado actual.
  
olist_order_items_dataset: detalle de los productos dentro de cada pedido. Por ejemplo: si una orden tiene 3 productos, habrá 3 filas aquí. Contiene el precio pactado y el costo de flete por ítem.
  
olist_order_payments_dataset: desglose de los pagos. Indica cómo se pagó la orden (tarjeta, boleto, voucher), el número de cuotas y el valor total de la transacción.
  
olist_order_reviews_dataset: reseñas y calificaciones de satisfacción. Contiene el puntaje (1-5 estrellas) y el comentario dejado por el cliente tras la entrega.
  
olist_customers_dataset: Maestro de clientes, relaciona al cliente con su ubicación geográfica.

olist_products_dataset: Catálogo maestro de productos. Incluye la categoría del producto y sus dimensiones físicas (peso, largo, ancho) usadas para calcular fletes.

product_category_name_translation: Tabla auxiliar para traducir los nombres de categorías del portugués al inglés

olist_sellers_dataset: Maestro de vendedores. Información de los vendedores de los productos en la plataforma y su ubicación.

olist_geolocation_dataset: base de datos de Códigos Postales (ZIP) de Brasil con sus coordenadas (Latitud/Longitud), la cual contiene múltiples coordenadas por ZIP.

**Vistas creadas:**

vw_sales_fact: tiene como propósito centralizar todas las métricas de ventas y logística a nivel de Ítem de Producto. Es la fuente principal para calcular Revenue, AOV y Tiempos de Entrega.

vw_customers_geo: tiene como propósito normalizar la ubicación de los clientes, resolviendo duplicados de códigos postales y asignando una única latitud/longitud para mapas.

vw_sellers_geo: tiene como propósito normalizar la ubicación de los vendedores para análisis logísticos de origen.

dim_zip: tiene como propósito ser una tabla intermedia creada para limpiar la relación "muchos a muchos" de la tabla original de geolocalización y agrupa por Código Postal.
  
