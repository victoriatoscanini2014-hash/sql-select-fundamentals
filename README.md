# TechStore — SQL SELECT Fundamentals

Este repositorio contiene consultas básicas en SQL utilizando `SELECT` sobre la tabla `sales`.

El objetivo es practicar la exploración de datos, la selección específica de columnas y el uso de alias para presentar información de manera clara a usuarios no técnicos.

## Consultas incluidas

El archivo `consultas_basicas.sql` contiene tres consultas:

1. Exploración general de la tabla `sales` mediante `SELECT *`.
2. Selección específica de `customer_id`, `product_id` y `total_amount`.
3. Uso de alias mediante `AS` para presentar nombres de columnas en español.

---

## ¿Por qué es mala práctica usar SELECT * en producción?

Aunque `SELECT *` puede ser útil durante una exploración inicial de una tabla, no es recomendable utilizarlo habitualmente en consultas de producción.

### 1. Rendimiento

`SELECT *` devuelve todas las columnas disponibles de la tabla, incluso aquellas que no son necesarias para el análisis.

Por ejemplo:

```sql
SELECT *
FROM sales;
