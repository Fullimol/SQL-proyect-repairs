# TRABAJO PRÁCTICO BD1

## ****** TABLAS CREADAS: ******
1. **REPUESTOS**: Información sobre cada repuesto (ID, nombre, descripción, precio, cantidad en stock).
2. **CATEGORIAS**: Clasificación de los repuestos (ID, nombre de la categoría).
3. **PROVEEDORES**: Datos de los proveedores de repuestos (ID, nombre, contacto, dirección).
4. **PEDIDOS**: Información sobre los pedidos realizados a los proveedores (ID, fecha, proveedor, estado).
5. **DETALLEPEDIDOS**: Detalles de cada pedido (ID, pedido ID, repuesto ID, cantidad, precio).
6. **CLIENTES**: Información de los clientes (ID, nombre, contacto, dirección).
7. **VENTAS**: Registro de las ventas realizadas (ID, fecha, cliente, total).
8. **DETALLEVENTAS**: Detalles de cada venta (ID, venta ID, repuesto ID, cantidad, precio).
9. **EMPLEADOS**: Datos de los empleados que gestionan el almacén (ID, nombre, puesto, contacto).
10. **INVENTARIOS**: Registro de inventario (ID, repuesto ID, cantidad actual, ubicación).
11. **MOVIMIENTOSINVENTARIO**: Historial de movimientos de inventario (ID, repuesto ID, cantidad, tipo de movimiento, fecha).
12. **DEVOLUCIONES**: Registro de devoluciones de repuestos (ID, venta ID, repuesto ID, cantidad, motivo).
13. **SUCURSALES**: Información sobre las diferentes sucursales (ID, nombre, dirección, contacto).
14. **ORDENES**: Registro de órdenes de trabajo para reparaciones (ID, cliente ID, fecha, estado).
15. **DETALLEORDENES**: Detalles de cada orden de trabajo (ID, orden de trabajo ID, repuesto ID, cantidad, precio).

## ****** ÍNDICES CREADOS: ******
Solo tiene índice la tabla `clientes` porque sino me tiraba un error al crear su clave foránea.

## ****** CLAVES PRIMARIAS CREADAS: (PK) ******
Cada una de las tablas tiene su propio ID como PrimaryKey.

## ****** CLAVES FORÁNEAS CREADAS: (FK) ******
**Tabla `pedidos`:**
- `fk_proveedor`: Hace referencia a `idproveedor` en la tabla `proveedores`.

**Tabla `detallepedidos`:**
- `fk_pedido`: Hace referencia a `idpedido` en la tabla `pedidos`.
- `fk_repuesto_detallepedidos`: Hace referencia a `idrepuesto` en la tabla `repuestos`.

**Tabla `detalleventas`:**
- `fk_venta`: Hace referencia a `idventa` en la tabla `ventas`.
- `fk_repuesto_detalleventas`: Hace referencia a `idrepuesto` en la tabla `repuestos`.

**Tabla `inventarios`:**
- `fk_repuesto_inventarios`: Hace referencia a `idrepuesto` en la tabla `repuestos`.

**Tabla `movimientosinventario`:**
- `fk_repuesto_movimientosinventario`: Hace referencia a `idrepuesto` en la tabla `repuestos`.

**Tabla `devoluciones`:**
- `fk_venta_devoluciones`: Hace referencia a `idventa` en la tabla `ventas`.
- `fk_repuesto_devoluciones`: Hace referencia a `idrepuesto` en la tabla `repuestos`.

**Tabla `ordenes`:**
- `fk_cliente`: Hace referencia a `idcliente` en la tabla `clientes`.

**Tabla `detalleordenes`:**
- `fk_orden`: Hace referencia a `idorden` en la tabla `ordenes`.
- `fk_repuesto_detalleordenes`: Hace referencia a `idrepuesto` en la tabla `repuestos`.