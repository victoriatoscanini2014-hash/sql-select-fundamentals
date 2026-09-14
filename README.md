# TechStore — SQL SELECT Fundamentals

Este repositorio contiene consultas básicas en SQL utilizando `SELECT` sobre la tabla `sales`.

El objetivo es practicar la exploración de datos, la selección específica de columnas y el uso de alias para presentar información de manera clara a usuarios no técnicos.

## Consultas incluidas

El archivo `consultas_basicas.sql` contiene tres consultas:

1. Exploración general de la tabla `sales` mediante `SELECT *`.
2. Selección específica de `customer_id`, `product_id` y `total_amount`.
3. Uso de alias mediante `AS` para presentar nombres de columnas en español.

---

## ¿Por qué es mala práctica usar `SELECT *` en producción?

Aunque `SELECT *` puede ser útil durante una exploración inicial de una tabla, no es recomendable utilizarlo habitualmente en consultas de producción.

### 1. Rendimiento

`SELECT *` devuelve todas las columnas disponibles de la tabla, incluso aquellas que no son necesarias para el análisis.

Por ejemplo:

```sql
SELECT *
FROM sales;
```

Si la tabla contiene muchas columnas o un volumen elevado de registros, solicitar información innecesaria puede aumentar la cantidad de datos procesados y transferidos.

En cambio, es preferible seleccionar únicamente las columnas necesarias:

```sql
SELECT customer_id, product_id, total_amount
FROM sales;
```

Esto permite realizar consultas más eficientes y enfocadas en el objetivo del análisis.

### 2. Mantenibilidad

Utilizar `SELECT *` también puede generar problemas cuando la estructura de la tabla cambia.

Por ejemplo, si posteriormente se agrega una nueva columna a `sales`, una consulta con `SELECT *` comenzará automáticamente a devolver esa nueva información, aunque originalmente no estuviera contemplada.

Seleccionar las columnas explícitamente hace que la consulta sea más predecible, fácil de leer y mantener.

### 3. Seguridad

`SELECT *` puede devolver columnas que no son necesarias para un determinado usuario o análisis.

En un entorno productivo, seleccionar únicamente los campos requeridos ayuda a limitar la exposición de información y facilita el control sobre qué datos se presentan.

Por ejemplo, si el equipo de Finanzas solo necesita conocer el cliente, el producto y el monto de la venta, no es necesario devolver todas las columnas de la tabla.

```sql
SELECT customer_id, product_id, total_amount
FROM sales;
```

### Conclusión

`SELECT *` es útil para explorar rápidamente una tabla durante una etapa inicial de análisis. Sin embargo, para consultas de producción es recomendable seleccionar explícitamente las columnas necesarias, ya que esto mejora el rendimiento, la mantenibilidad y el control sobre la información presentada.

---

## ¿Qué son los alias y para qué sirven?

Un alias permite asignar un nombre alternativo a una columna dentro del resultado de una consulta.

Se utiliza mediante la palabra clave `AS`.

Por ejemplo:

```sql
SELECT
    order_date AS fecha_pedido,
    product_name AS nombre_producto,
    quantity AS cantidad_unidades
FROM sales;
```

En este caso:

* `order_date` se muestra como `fecha_pedido`.
* `product_name` se muestra como `nombre_producto`.
* `quantity` se muestra como `cantidad_unidades`.

El alias **no modifica el nombre real de la columna en la base de datos**. Solamente cambia el nombre con el que aparece en el resultado de esa consulta.

---

## Ejemplo para el equipo de Finanzas

Los nombres de las columnas de una base de datos suelen estar definidos con nombres técnicos y estandarizados.

Por ejemplo:

```text
customer_id
product_id
total_amount
```

Estos nombres pueden ser adecuados para un equipo técnico, pero para usuarios de negocio puede ser más claro presentar la información con nombres descriptivos.

Por ejemplo:

```sql
SELECT
    customer_id AS id_cliente,
    product_id AS id_producto,
    total_amount AS monto_total
FROM sales;
```

De esta manera, el resultado puede ser interpretado más fácilmente por el equipo de Finanzas y otros usuarios no técnicos.

Los alias mejoran la legibilidad del resultado sin modificar la estructura original de la base de datos.

---

## Buenas prácticas aplicadas

En este ejercicio se aplican las siguientes buenas prácticas:

* Utilizar `SELECT *` principalmente para exploración inicial.
* Seleccionar explícitamente las columnas necesarias en consultas de producción.
* Utilizar alias para mejorar la comprensión de los resultados.
* Mantener nombres de alias claros y consistentes.
* Utilizar `snake_case` para los nombres de alias.
* Documentar las consultas mediante comentarios.
* Separar el código SQL de la documentación conceptual.

---

## Archivos del repositorio

```text
sql-select-fundamentals/
│
├── consultas_basicas.sql
└── README.md
```

### `consultas_basicas.sql`

Contiene las tres consultas SQL desarrolladas en el ejercicio.

### `README.md`

Contiene la documentación del ejercicio, incluyendo la explicación de `SELECT *`, sus implicancias en producción y el uso de alias para usuarios no técnicos.

---

## Conclusión

El ejercicio permite comprender que escribir una consulta SQL no consiste únicamente en obtener datos, sino también en seleccionar la información necesaria, presentar resultados comprensibles y aplicar buenas prácticas que faciliten el mantenimiento y el uso seguro de las consultas.

Estas prácticas son especialmente importantes cuando las consultas forman parte de reportes, procesos de análisis o herramientas utilizadas por diferentes equipos dentro de una organización.

FROM sales;
