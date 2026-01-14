# olist-ecommerce-sql-powerbi
Proyecto integral de análisis de datos utilizando el dataset público brasileño de comercio electrónico OLIST. Combiné SQL SERVER para análisis de datos y POWER BI como herramienta de visualización.

📊 Olist E-commerce Analytics (SQL Server + Power BI)

📌 Descripción general del proyecto

Este proyecto analiza el conjunto de datos de comercio electrónico brasileño Olist utilizando SQL Server para el modelado de datos y Power BI para la visualización.

El objetivo es demostrar un flujo de trabajo analítico desde la carga de datos sin procesar hasta los dashboards.

🗂 Dataset

Kaggle – Brazilian E-Commerce Public Dataset by Olist

Periodo: 2016–2018

Data incluye archivos CSV: customers, sellers, orders,ítems, products, payments, reviews, y geolocation.

🛠 Herramientas

SQL Server: carga de data, modelo relacional, vista y lógica de negocios.

Power BI: modelo de estrella, medidas DAX y dashboards iteractivos.

DAX: cálculos de KPI's  y análisis de tiempo

🧱 Modelado de datos

Esquema relacional con claves primarias y foráneas.

Tabla de hechos creada a nivel de artículo del pedido.

Tablas de dimensiones para clientes, vendedores, productos, geografía y tiempo.

Vistas SQL utilizadas como capa semántica para la generación de informes.

📈 KPI's claves:

Ingresos Totales

Pedidos

Ticket promedio de pedido

Días promedio de entrega

% de entregas a tiempo

Puntuación promedio de revisión


📊 Dashboards

Página 1 – Descripción Ejecutiva

KPI's de rendimiento empresarial

Tendencia de ingresos y pedidos

Top categoría de productos

Página 2 – Rendimiento del Producto y del Vendedor

Top vendedores por ingresos

Ingresos por estado del vendedor

Costo del medio de transporte por categoría

Página 3 – Entrega y Satisfacción del Cliente

Tiempo de entrega frente a tendencia de puntuación de las reseñas

Entrega puntual por estado

Distribución de plazos de entrega

🔍 Información clave

Fuerte crecimiento de los ingresos durante 2017-2018.

Alta concentración de ingresos en unos pocos vendedores y en el estado de São Paulo.

El rendimiento logístico influye directamente en la satisfacción del cliente.

Los costes de transporte varían significativamente entre las distintas categorías de productos.
