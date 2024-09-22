/*                               TRABAJO PRACTICO GRUPAL                                */
CREATE DATABASE IF NOT EXISTS proyecto_repair;
use proyecto_repair;

/***********     CREACIÓN DE TABLAS       ***********/
/*Información sobre cada repuesto*/
CREATE TABLE IF NOT EXISTS repuestos (
	idrepuesto INT,
    nombre VARCHAR(100),
    descripcion VARCHAR(100),
    precio int,
    cantidadStock int
);

/*Clasificación de los repuestos*/
CREATE TABLE IF NOT EXISTS categorias (
	idcategoria INT,
    nombre VARCHAR(100)
);

/*Datos de los proveedores de repuestos*/
CREATE TABLE IF NOT EXISTS proveedores (
	idproveedor INT,
    nombre VARCHAR(100),
    contacto VARCHAR(100),
    direccion VARCHAR(100)
);

/*Información sobre los pedidos realizados a los proveedores*/
CREATE TABLE IF NOT EXISTS pedidos (
	idpedido INT,
    fecha DATE,
    idproveedor INT,
    estado CHAR(3) /*PEN = pendiente, PRO = proceso, ENV = enviado, REC = recibido, CAN = cancelado, DEV = devuelto*/
);

/*Detalles de cada pedido*/
CREATE TABLE IF NOT EXISTS detallepedidos (
	iddetalle INT,
    idpedido INT, /* Identificador del pedido al que pertenece este detalle. Esta columna se relaciona con la tabla Pedidos.*/
    idrepuesto INT, /* Identificador del repuesto que se está pidiendo. Esta columna se relaciona con la tabla Repuestos.*/
    cantidad INT,
    precio INT /*El precio unitario del repuesto en el momento del pedido.*/
);

/*Información de los clientes*/
CREATE TABLE IF NOT EXISTS clientes (
	idcliente INT,
    nombre VARCHAR(100),
    contacto VARCHAR(100),
    direccion VARCHAR(100)
);

/*Registro de las ventas realizadas*/
CREATE TABLE IF NOT EXISTS ventas (
	idventa INT,
    fecha DATE,
    cliente VARCHAR(100),
    total INT
);

/*Detalles de cada venta */
CREATE TABLE IF NOT EXISTS detalleventas (
	iddetalleventa INT,
    idventa INT,
    idrepuesto INT,
	cantidad INT,
    precio INT /*precio unitario*/
);

/*Datos de los empleados que gestionan el almacén*/
CREATE TABLE IF NOT EXISTS empleados (
	idempleado INT,
    nombre VARCHAR(100),
    puesto VARCHAR(100),
    contacto VARCHAR(100)
);

/*Registro de inventario*/
CREATE TABLE IF NOT EXISTS inventarios (
	idinventario INT,
    idrepuesto INT,
    cantidad INT, /*cantidad actual de unidades del repuesto disponibles en el almacén*/
    ubicacion VARCHAR(30) /*ubicación específica dentro del almacén donde se encuentra el repuesto (Ej: sectorA, sectorB, sectorC)*/
);


/*Historial de movimientos de inventario*/
CREATE TABLE IF NOT EXISTS movimientosinventario (
	idmovimiento INT,
    idrepuesto INT,
    cantidad INT,
    tipo VARCHAR(30), /*El tipo de movimiento realizado (por ejemplo: entrada, salida)*/
    fecha DATE
);

/*Registro de devoluciones de repuestos*/
CREATE TABLE IF NOT EXISTS devoluciones (
	iddevolucion INT,
    idventa INT,
    idrepuesto INT,
    cantidad INT,
    motivo VARCHAR(100)
);

/*Información sobre las diferentes sucursales */
CREATE TABLE IF NOT EXISTS sucursales (
	idsucursal INT,
    nombre VARCHAR(100),
    direccion VARCHAR(100),
    contacto VARCHAR(100)
);

/*Registro de órdenes de trabajo para reparaciones*/
CREATE TABLE IF NOT EXISTS ordenes (
	idorden INT,
    idcliente INT,
    fecha DATE,
    estado VARCHAR(30) /*El estado actual de la orden de trabajo (por ejemplo: pendiente, en proceso, completada, cancelada)*/
);


/*Detalles de cada orden de trabajo*/
CREATE TABLE IF NOT EXISTS detalleordenes (
	iddetalleorden INT,
    idorden INT,
    idrepuesto INT, /*identifica repuesto utilizado en la orden de trabajo. Esta columna se relaciona con la tabla Repuestos.*/
    cantidad INT, /*cantidad de unidades del repuesto utilizadas en la orden de trabajo*/
    precio INT /*precio unitario del repuesto*/
);


/***********     CREACIÓN DE ÍNDICES      ***********/
ALTER TABLE clientes ADD INDEX (idcliente);


/***********     CREACIÓN DE CLAVES PRIMARIAS       ***********/
ALTER TABLE repuestos ADD CONSTRAINT repuestosPK PRIMARY KEY (idrepuesto);
ALTER TABLE categorias ADD CONSTRAINT categoriasPK PRIMARY KEY (idcategoria);
ALTER TABLE proveedores ADD CONSTRAINT proveedoresPK PRIMARY KEY (idproveedor);
ALTER TABLE pedidos ADD CONSTRAINT pedidosPK PRIMARY KEY (idpedido);
ALTER TABLE detallepedidos ADD CONSTRAINT detallePedidosPK PRIMARY KEY (iddetalle);
ALTER TABLE ventas ADD CONSTRAINT ventasPK PRIMARY KEY (idventa);
ALTER TABLE detalleventas ADD CONSTRAINT detalleventasPK PRIMARY KEY (iddetalleventa);
ALTER TABLE empleados ADD CONSTRAINT empleadosPK PRIMARY KEY (idempleado);
ALTER TABLE inventarios ADD CONSTRAINT inventariosPK PRIMARY KEY (idinventario);
ALTER TABLE movimientosinventario ADD CONSTRAINT movimientosinventarioPK PRIMARY KEY (idmovimiento);
ALTER TABLE devoluciones ADD CONSTRAINT devolucionesPK PRIMARY KEY (iddevolucion);
ALTER TABLE sucursales ADD CONSTRAINT sucursalesPK PRIMARY KEY (idsucursal);
ALTER TABLE ordenes ADD CONSTRAINT ordenesPK PRIMARY KEY (idorden);
ALTER TABLE detalleordenes ADD CONSTRAINT detalleordenesPK PRIMARY KEY (iddetalleorden);


/***********    CREACIÓN DE CLAVES FORANEAS       ***********/
ALTER TABLE pedidos ADD CONSTRAINT fk_proveedor FOREIGN KEY (idproveedor) REFERENCES proveedores(idproveedor);
ALTER TABLE detallepedidos ADD CONSTRAINT fk_pedido FOREIGN KEY (idpedido) REFERENCES pedidos(idpedido);
ALTER TABLE detallepedidos ADD CONSTRAINT fk_repuesto_detallepedidos FOREIGN KEY (idrepuesto) REFERENCES repuestos(idrepuesto);
ALTER TABLE detalleventas ADD CONSTRAINT fk_venta FOREIGN KEY (idventa) REFERENCES ventas(idventa);
ALTER TABLE detalleventas ADD CONSTRAINT fk_repuesto_detalleventas FOREIGN KEY (idrepuesto) REFERENCES repuestos(idrepuesto);
ALTER TABLE inventarios ADD CONSTRAINT fk_repuesto_inventarios FOREIGN KEY (idrepuesto) REFERENCES repuestos(idrepuesto);
ALTER TABLE movimientosinventario ADD CONSTRAINT fk_repuesto_movimientosinventario FOREIGN KEY (idrepuesto) REFERENCES repuestos(idrepuesto);
ALTER TABLE devoluciones ADD CONSTRAINT fk_venta_devoluciones FOREIGN KEY (idventa) REFERENCES ventas(idventa);
ALTER TABLE devoluciones ADD CONSTRAINT fk_repuesto_devoluciones FOREIGN KEY (idrepuesto) REFERENCES repuestos(idrepuesto);
ALTER TABLE ordenes ADD CONSTRAINT fk_cliente FOREIGN KEY (idcliente) REFERENCES clientes(idcliente);
ALTER TABLE detalleordenes ADD CONSTRAINT fk_orden FOREIGN KEY (idorden) REFERENCES ordenes(idorden);
ALTER TABLE detalleordenes ADD CONSTRAINT fk_repuesto_detalleordenes FOREIGN KEY (idrepuesto) REFERENCES repuestos(idrepuesto);