-- ══════════════════════════════════════════
-- TechStore — Consultas Básicas SELECT
-- Autor: [Victoria Toscanini]
-- Fecha: [13/09/2026]
-- ══════════════════════════════════════════

-- Consulta 1: Exploración general de la tabla sales
-- SELECT * es útil para explorar rápidamente la estructura
-- y conocer todas las columnas de una tabla.
-- En producción se recomienda seleccionar únicamente
-- las columnas necesarias para mejorar rendimiento,
-- mantenibilidad y seguridad.

SELECT *
FROM sales;


-- Consulta 2: Selección de columnas específicas para finanzas
-- El equipo de finanzas necesita identificar al cliente,
-- el producto y el monto de la operación.

SELECT customer_id, product_id, total_amount
FROM sales;


-- Consulta 3: Selección con alias en español para stakeholders
-- Se utilizan alias para transformar nombres técnicos
-- en nombres más fáciles de interpretar.

SELECT
    order_date AS fecha_pedido,
    product_name AS nombre_producto,
    quantity AS cantidad_unidades
FROM sales;
