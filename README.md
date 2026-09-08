# sql-select-fundamentals
Prácticas de SQL - Diseño de bases de datos
[Ventas_Tech_DB.sql](https://github.com/user-attachments/files/31965336/Ventas_Tech_DB.sql)
CREATE DATABASE Ventas_Tech_DB;
GO
USE Ventas_Tech_DB;
GO
DROP TABLE IF EXISTS ventas;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS categorias;
GO

CREATE TABLE categorias (
id_categoria INT PRIMARY KEY,
nombre_categoria VARCHAR(50) NOT NULL,
  descripcion VARCHAR(200)
);

CREATE TABLE clientes (
id_cliente INT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE,
ciudad VARCHAR(50),
fecha_registro DATE NOT NULL
);

CREATE TABLE productos (
id_producto INT PRIMARY KEY,
nombre_producto VARCHAR(100) NOT NULL,
id_categoria INT,
precio DECIMAL(10,2) NOT NULL,
stock INT DEFAULT 0,
activo TINYINT DEFAULT 1,
FOREIGN KEY (id_categoria)
REFERENCES categorias(id_categoria)
);

CREATE TABLE ventas (
id_venta INT PRIMARY KEY,
id_cliente INT,
id_producto INT,
cantidad INT NOT NULL,
precio_unitario DECIMAL(10,2) NOT NULL,
fecha_venta DATE NOT NULL,
FOREIGN KEY (id_cliente)
REFERENCES clientes(id_cliente),
FOREIGN KEY (id_producto)
REFERENCES productos(id_producto)
);

INSERT INTO categorias 
(id_categoria, nombre_categoria, descripcion) 
VALUES
(1, 'Computacion', 'Laptops, notebooks y equipos informaticos'),
(2, 'Accesorios', 'Mouse, teclados y perifericos'),
(3, 'Audio', 'Auriculares y parlantes'),
(4, 'Almacenamiento', 'Discos SSD y unidades de almacenamiento');

SELECT * FROM CATEGORIAS

INSERT INTO clientes
(id_cliente, nombre, email, ciudad, fecha_registro)
VALUES
(1, 'Sofia Martinez', 'sofia.martinez@mail.com', 'Mercedes', '2026-01-10'),
(2, 'Martin Pereira', 'martin.pereira@mail.com', 'Montevideo', '2026-01-15'),
(3, 'Camila Rodriguez', 'camila.rodriguez@mail.com', 'Maldonado', '2026-02-03'),
(4, 'Diego Silva', 'diego.silva@mail.com', 'Colonia', '2026-02-18'),
(5, 'Valentina Castro', 'valentina.castro@mail.com', 'Paysandu', '2026-03-05');

SELECT * FROM CLIENTES

INSERT INTO productos
(id_producto, nombre_producto, id_categoria, precio, stock, activo)
VALUES
(1, 'Laptop Data Pro 15', 1, 1350.00, 12, 1),
(2, 'Mouse Inalambrico Pro', 2, 35.00, 75, 1),
(3, 'Monitor 27 Full HD', 1, 420.00, 15, 1),
(4, 'Teclado Mecanico RGB', 2, 110.00, 30, 1),
(5, 'Auriculares Wireless', 3, 145.00, 25, 1),
(6, 'SSD Externo 1TB', 4, 135.00, 20, 1);

SELECT * FROM PRODUCTOS

INSERT INTO ventas
(id_venta, id_cliente, id_producto, cantidad, precio_unitario, fecha_venta)
VALUES
(1, 1, 1, 1, 1350.00, '2026-03-10'),
(2, 2, 2, 3, 35.00, '2026-03-11'),
(3, 3, 3, 1, 420.00, '2026-03-12'),
(4, 1, 5, 2, 145.00, '2026-03-13'),
(5, 4, 6, 1, 135.00, '2026-03-14'),
(6, 2, 4, 2, 110.00, '2026-03-15'),
(7, 5, 1, 1, 1350.00, '2026-03-16'),
(8, 3, 2, 5, 35.00, '2026-03-17'),
(9, 4, 5, 1, 145.00, '2026-03-18'),
(10, 5, 3, 2, 420.00, '2026-03-19');

SELECT * FROM VENTAS

