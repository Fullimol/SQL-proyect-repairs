# TRABAJO PRÁCTICO BD1

## Requerimientos
1. Armar catálogo de partes. (Ver TABLA 1)
2. Reporte con datos de proveedores. (Ver TABLA 2)
3. Reporte de órdenes compradas a proveedores. (Ver TABLA 3)
4. Armar pedido pendiente de entrega a clientes externos. (Ver TABLA 4)
5. Reporte con datos de clientes. (Ver TABLA 5)
6. Reporte con datos de empleados que gestionan el almacén. (Ver TABLA 6)
7. Reporte del inventario. (Ver TABLA 7)
8. Reporte de pedidos entregados. (Ver TABLA 8)
9. Armar gestión de devolución de repuestos a proveedores. (Ver TABLA 9)
10. Armar pedido a cliente interno. (Ver TABLA 10)
11. Reporte de órdenes pendientes de entrega. (Ver TABLA 11)
12. Requerimientos: Reporte de consumos de materiales. (Ver TABLA 12)
13. Requerimientos: Registrar auditoría de inventario. (Ver TABLA 13)

## Tablas Creadas
1. **RE repuestos**: Información sobre cada repuesto (ID, nombre, descripción, precio, cantidad en stock).
2. **PROVEEDORES**: Datos de los proveedores de repuestos (ID, nombre, contacto, dirección).
3. **PEDIDOS**: Información sobre los pedidos realizados a los proveedores (ID, fecha, proveedor, estado).
4. **DETALLEPEDIDOS**: Detalles de cada pedido (ID, pedido ID, repuesto ID, cantidad, precio).
5. **CLIENTES**: Información de los clientes (ID, nombre, contacto, dirección).
6. **EMPLEADOS**: Datos de los empleados que gestionan el almacén (ID, nombre, puesto, contacto).
7. **INVENTARIOS**: Registro de inventario (ID, repuesto ID, cantidad actual, ubicación).
8. **MOVIMIENTOSINVENTARIO**: Historial de movimientos de inventario (ID, repuesto ID, cantidad, tipo de movimiento, fecha).
9. **DEVOLUCIONES**: Registro de devoluciones de repuestos (ID, venta ID, repuesto ID, cantidad, motivo).
10. **ORDENES**: Registro de órdenes de trabajo para reparaciones (ID, cliente ID, fecha, estado).
11. **DETALLEORDENES**: Detalles de cada orden de trabajo (ID, orden de trabajo ID, repuesto ID, cantidad, precio).
12. **CONSUMOSLAB**: Detalle del consumo de repuestos del laboratorio de reparación.
13. **AUDITORIASTOCK**: Detalle del control de stock.

## Índices Creados
- Se crea un índice por cada columna de la tabla que posiblemente tenga consultas más frecuentes.

## Check Constraints
### Tabla repuestos:
- **chk_precio** y **chk_cantidadStock**: Evitar números negativos.

### Tabla detallepedidos y detalleordenes:
- **chk_precio_detalle** y **chk_precio_detalleorden**: Evitar números negativos.

### Tabla pedidos:
- **chk_estado**: Solo permite que tenga valores ('PEN', 'PRO', 'ENV', 'REC', 'CAN', 'DEV').
- **chk_estado_orden**: Solo permite que tenga valores ('pendiente', 'en proceso', 'completada', 'cancelada').

### Tabla movimientosinventario:
- **chk_tipo_movimiento**: Solo permite que tenga valores ('entrada', 'salida').

## Claves Primarias Creadas (PK)
- Cada una de las tablas tiene su propio id como PrimaryKey.

## Claves Foráneas Creadas (FK)
### Tabla pedidos:
- **fk_proveedor**: Hace referencia a `idproveedor` en la tabla `proveedores`.

### Tabla detallepedidos:
- **fk_pedido**: Hace referencia a `idpedido` en la tabla `pedidos`.
- **fk_repuesto_detallepedidos**: Hace referencia a `idrepuesto` en la tabla `repuestos`.

### Tabla inventarios:
- **fk_repuesto_inventarios**: Hace referencia a `idrepuesto` en la tabla `repuestos`.

### Tabla movimientosinventario:
- **fk_repuesto_movimientosinventario**: Hace referencia a `idrepuesto` en la tabla `repuestos`.

### Tabla devoluciones:
- **fk_repuesto_devoluciones**: Hace referencia a `idrepuesto` en la tabla `repuestos`.

### Tabla ordenes:
- **fk_cliente**: Hace referencia a `idcliente` en la tabla `clientes`.

### Tabla detalleordenes:
- **fk_orden**: Hace referencia a `idorden` en la tabla `ordenes`.
- **fk_repuesto_detalleordenes**: Hace referencia a `idrepuesto` en la tabla `repuestos`.
