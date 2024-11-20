/*                               TRABAJO PRACTICO GRUPAL                                */
CREATE DATABASE IF NOT EXISTS proyecto_repair;
USE proyecto_repair;

/***********     CREACIÓN DE TABLAS       ***********/
CREATE TABLE catalogo (
    id_repuesto INT AUTO_INCREMENT PRIMARY KEY,
    referencia CHAR(8),
    modelo VARCHAR(10),
    categoria VARCHAR(20),
    descripcion VARCHAR(100),
    precio DECIMAL(10, 2),
    precio_venta_sugerido DECIMAL(10, 2)
);

CREATE TABLE inventario (
    id_inventario INT AUTO_INCREMENT PRIMARY KEY,
    id_repuesto INT,
    cantidad INT,
    ubicacion VARCHAR(50)
);

CREATE TABLE empleados (
    id_empleado CHAR(7) PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    puesto VARCHAR(100),
    sector VARCHAR(100),
    email VARCHAR(100),
    usuario VARCHAR(100)
);

CREATE TABLE cliente_tipo (
    tipo_cliente INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(20),
    descripcion VARCHAR(100)
);

CREATE TABLE cliente_detalles (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    tipo_cliente INT,
    nombre_cliente VARCHAR(100),
    mail VARCHAR(100),
    telefono INT,
    direccion VARCHAR(100),
    contacto VARCHAR(100)
);

CREATE TABLE proveedores (
    id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    mail VARCHAR(100),
    telefono VARCHAR(100),
    direccion VARCHAR(100),
    contacto VARCHAR(100)
);

CREATE TABLE ordenes_de_compra (
    id_orden_compra INT AUTO_INCREMENT PRIMARY KEY,
    id_proveedor INT,
    fecha_emision DATE,
    fecha_recepcion DATE,
    estado VARCHAR(100),
    precio_orden DECIMAL(10, 2)
);

CREATE TABLE detalle_ordenes_compra (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_orden_compra INT,
    id_repuesto INT,
    cantidad INT,
    precio DECIMAL(10, 2)
);

CREATE TABLE pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    fecha_pedido DATE,
    fecha_entrega DATE,
    estado VARCHAR(100),
    valor DECIMAL(10, 2)
);

CREATE TABLE detalle_pedidos (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_cliente INT,
    fecha_pedido DATE,
    fecha_entrega DATE,
    estado VARCHAR(100),
    id_repuesto INT,
    cantidad_pedida INT,
    precio_venta DECIMAL(10, 2)
);

CREATE TABLE auditoria_inventario (
    id_auditoria INT AUTO_INCREMENT PRIMARY KEY,
    id_repuesto INT,
    ubicacion VARCHAR(100),
    cantidad_virtual INT,
    cantidad_fisica INT,
    diferencia INT,
    id_empleado INT,
    fecha_auditoria DATE
);

CREATE TABLE devoluciones (
    id_devolucion INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido_compra INT,
    id_proveedor INT,
    id_repuesto INT,
    cantidad INT,
    fecha_devolucion DATE,
    estado VARCHAR(100),
    id_motivo_devolucion INT
);

CREATE TABLE motivo_devoluciones (
    id_motivo INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100)
);

CREATE TABLE salidas_inventario (
    id_salida INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_repuesto INT,
    cantidad_entregada INT,
    fecha_salida DATE,
    empleado_entrega VARCHAR(100),
    recepcion VARCHAR(100),
    precio_venta DECIMAL(10, 2)
);

CREATE TABLE entradas_inventario (
    id_entrada INT AUTO_INCREMENT PRIMARY KEY,
    id_orden_compra INT,
    id_repuesto INT,
    cantidad_recibida INT,
    fecha_recepcion DATE,
    empleado_recibe VARCHAR(100),
    origen VARCHAR(100)
);

/***********     CREACIÓN DE ÍNDICES      ***********/
ALTER TABLE catalogo ADD INDEX (id_repuesto);
ALTER TABLE inventario ADD INDEX (id_repuesto);
ALTER TABLE cliente_detalles ADD INDEX (tipo_cliente);
ALTER TABLE ordenes_de_compra ADD INDEX (id_proveedor);
ALTER TABLE detalle_ordenes_compra ADD INDEX (id_orden_compra);
ALTER TABLE detalle_ordenes_compra ADD INDEX (id_repuesto);
ALTER TABLE entradas_inventario ADD INDEX (id_orden_compra);
ALTER TABLE entradas_inventario ADD INDEX (id_repuesto);
ALTER TABLE entradas_inventario ADD INDEX (empleado_recibe);
ALTER TABLE pedidos ADD INDEX (id_cliente);
ALTER TABLE detalle_pedidos ADD INDEX (id_pedido);
ALTER TABLE detalle_pedidos ADD INDEX (id_cliente);
ALTER TABLE salidas_inventario ADD INDEX (id_pedido);
ALTER TABLE salidas_inventario ADD INDEX (id_repuesto);
ALTER TABLE salidas_inventario ADD INDEX (empleado_entrega);
ALTER TABLE auditoria_inventario ADD INDEX (id_repuesto);
ALTER TABLE auditoria_inventario ADD INDEX (ubicacion);
ALTER TABLE auditoria_inventario ADD INDEX (id_empleado);
ALTER TABLE devoluciones ADD INDEX (id_pedido_compra);
ALTER TABLE devoluciones ADD INDEX (id_proveedor);
ALTER TABLE devoluciones ADD INDEX (id_repuesto);

/***********     CREACIÓN DE UNIQUE KEYS***********/
ALTER TABLE catalogo ADD UNIQUE (referencia);
ALTER TABLE empleados ADD UNIQUE (usuario);
ALTER TABLE clientes_detalle ADD UNIQUE (mail);
ALTER TABLE proveedores ADD UNIQUE (mail);
ALTER TABLE detalle_ordenes_compra ADD UNIQUE (id_orden_compra, id_repuesto);
ALTER TABLE entradas_inventario ADD UNIQUE (id_orden_compra, id_repuesto);
ALTER TABLE detalle_pedidos ADD UNIQUE (id_pedido, id_repuesto);
ALTER TABLE salidas_inventario ADD UNIQUE (id_pedido, id_repuesto);
ALTER TABLE auditoria_inventario ADD UNIQUE (id_repuesto, fecha_auditoria);
ALTER TABLE motivo_devoluciones ADD UNIQUE (descripcion);

/***********    CREACIÓN DE CLAVES FORÁNEAS       ***********/
ALTER TABLE inventario ADD CONSTRAINT fk_inventario FOREIGN KEY (id_repuesto) REFERENCES catalogo(id_repuesto);
ALTER TABLE cliente_detalles ADD CONSTRAINT fk_clientesDetalle FOREIGN KEY (tipo_cliente) REFERENCES cliente_tipo(tipo_cliente);
/*ALTER TABLE ordenes_de_compra ADD CONSTRAINT fk_ordenesDeCompra_proveedor FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor);*/
ALTER TABLE detalle_ordenes_compra ADD CONSTRAINT fk_detalleOrdenesCompra_orden FOREIGN KEY (id_orden_compra) REFERENCES ordenes_de_compra(id_orden_compra);
ALTER TABLE detalle_ordenes_compra ADD CONSTRAINT fk_detalleOrdenesCompra_repuesto FOREIGN KEY (id_repuesto) REFERENCES catalogo(id_repuesto);
ALTER TABLE entradas_inventario ADD CONSTRAINT fk_entradasInventario_orden FOREIGN KEY (id_orden_compra) REFERENCES ordenes_de_compra(id_orden_compra);
ALTER TABLE entradas_inventario ADD CONSTRAINT fk_entradasInventario_repuesto FOREIGN KEY (id_repuesto) REFERENCES catalogo(id_repuesto);
/*ALTER TABLE entradas_inventario ADD CONSTRAINT fk_entradasInventario_empleado FOREIGN KEY (empleado_recibe) REFERENCES empleados(id_empleado);*/
ALTER TABLE pedidos ADD CONSTRAINT fk_pedidos_cliente FOREIGN KEY (id_cliente) REFERENCES cliente_detalles(id_cliente);
ALTER TABLE detalle_pedidos ADD CONSTRAINT fk_detallePedidos_pedido FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido);
ALTER TABLE detalle_pedidos ADD CONSTRAINT fk_detallePedidos_cliente FOREIGN KEY (id_cliente) REFERENCES cliente_detalles(id_cliente);
ALTER TABLE salidas_inventario ADD CONSTRAINT fk_salidasInventario_pedido FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido);
ALTER TABLE salidas_inventario ADD CONSTRAINT fk_salidasInventario_repuesto FOREIGN KEY (id_repuesto) REFERENCES catalogo(id_repuesto);
/*ALTER TABLE salidas_inventario ADD CONSTRAINT fk_salidasInventario_empleado FOREIGN KEY (empleado_entrega) REFERENCES empleados(id_empleado);*/
ALTER TABLE auditoria_inventario ADD CONSTRAINT fk_auditoriaInventario_repuesto FOREIGN KEY (id_repuesto) REFERENCES catalogo(id_repuesto);
/*ALTER TABLE auditoria_inventario ADD CONSTRAINT fk_auditoriaInventario_ubicacion FOREIGN KEY (ubicacion) REFERENCES inventario(ubicacion);*/
/*ALTER TABLE auditoria_inventario ADD CONSTRAINT fk_auditoriaInventario_empleado FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado);*/
ALTER TABLE devoluciones ADD CONSTRAINT fk_devoluciones_pedido FOREIGN KEY (id_pedido_compra) REFERENCES ordenes_de_compra(id_orden_compra);
ALTER TABLE devoluciones ADD CONSTRAINT fk_devoluciones_proveedor FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor);
ALTER TABLE devoluciones ADD CONSTRAINT fk_devoluciones_repuesto FOREIGN KEY (id_repuesto) REFERENCES catalogo(id_repuesto);

/***********     CREACIÓN DE CHECK CONSTRAINTS       ***********/
ALTER TABLE catalogo ADD CONSTRAINT chk_precio CHECK (precio > 0);
ALTER TABLE catalogo ADD CONSTRAINT chk_precio_venta_sugerido CHECK (precio_venta_sugerido >= 0);
ALTER TABLE inventario ADD CONSTRAINT chk_cantidad CHECK (cantidad >= 0);
ALTER TABLE detalle_pedidos ADD CONSTRAINT chk_precio_detalle CHECK (precio_venta > 0);
ALTER TABLE detalle_pedidos ADD CONSTRAINT chk_cantidad_pedida CHECK (cantidad_pedida > 0);
ALTER TABLE detalle_ordenes_compra ADD CONSTRAINT chk_precio_detalle_orden CHECK (precio > 0);
ALTER TABLE detalle_ordenes_compra ADD CONSTRAINT chk_cantidad_orden CHECK (cantidad > 0);
ALTER TABLE pedidos ADD CONSTRAINT chk_estado CHECK (estado IN ('PEN', 'PRO', 'ENV', 'REC', 'CAN', 'DEV'));
ALTER TABLE ordenes_de_compra ADD CONSTRAINT chk_estado_orden CHECK (estado IN ('pendiente', 'en proceso', 'completada', 'cancelada'));
ALTER TABLE devoluciones ADD CONSTRAINT chk_cantidad_devolucion CHECK (cantidad > 0);
ALTER TABLE devoluciones ADD CONSTRAINT chk_estado_devolucion CHECK (estado IN ('PENDIENTE', 'ENVIADO'));
ALTER TABLE salidas_inventario ADD CONSTRAINT chk_cantidad_salida CHECK (cantidad_entregada > 0);
ALTER TABLE salidas_inventario ADD CONSTRAINT chk_precio_venta_salida CHECK (precio_venta > 0);
ALTER TABLE entradas_inventario ADD CONSTRAINT chk_cantidad_entrada CHECK (cantidad_recibida > 0);
