/*INSERT DE DATOS: */

INSERT INTO catalogo (id_repuesto, referencia, modelo, categoria, descripcion, precio, precio_venta_sugerido) VALUES
(1, 'ALA00009', 'A73', 'Audio', 'Altavoz', 3000, 3900),
(2,'ALA00008', 'A8', 'Audio', 'Altavoz', 3000, 3900),
(3,'ALS00003', 'S22', 'Audio', 'Altavoz', 3000, 3900),
(4,'ALS00002', 'S23', 'Audio', 'Altavoz', 3000, 3900),
(5,'ALS00001', 'S24', 'Audio', 'Altavoz', 3000, 3900),
(6,'AUS00002', 'S23', 'Audio', 'Auricular', 3000, 3900),
(7,'AUS00001', 'S24', 'Audio', 'Auricular', 3000, 3900),
(8,'BTA00009', 'A73', 'Carga', 'Bateria', 6500, 8450),
(9,'BTA00008', 'A8', 'Carga', 'Bateria', 6500, 8450),
(10,'BTA00007', 'A9', 'Carga', 'Bateria', 6500, 8450);

INSERT INTO inventario (id_inventario, id_repuesto, cantidad, ubicacion) VALUES
(1, 1, 25, 'Rack01'),
(2, 2, 0, 'Rack05'),
(3, 3, 0, 'Rack05'),
(4, 4, 15, 'Rack05'),
(5, 5, 20, 'Rack06'),
(6, 6, 8, 'Rack07'),
(7, 7, 0, 'Rack02'),
(8, 8, 20, 'Rack02'),
(9, 9, 3, 'Rack02'),
(10, 10, 25, 'Rack03');

INSERT INTO empleados (id_empleado, nombre, apellido, puesto, sector, email, usuario) VALUES
('1', 'Agustin', 'Sanchez', 'Supervisor', 'Logistica', 'Agustinsanchez@bbddrepair.com', 'a.sanchez'),
('2', 'Mario', 'Soria', 'Picking', 'Logistica', 'Mariosoria@bbddrepair.com', 'm.soria'),
('3', 'Esteban', 'Morales', 'Picking', 'Logistica', 'EstebanMorales@bbddrepair.com', 'e.morales'),
('4', 'Jose', 'Miralla', 'Recepcion', 'Logistica', 'JoseMiralla@bbddrepair.com', 'j.miralla'),
('5', 'Federico', 'Lopez', 'Recepcion', 'Logistica', 'FedericoLopez@bbddrepair.com', 'f.lopez'),
('6', 'Julio', 'Neto', 'Expedicion', 'Logistica', 'JulioNeto@bbddrepair.com', 'j.neto'),
('7', 'Cristian', 'Soldan', 'Expedicion', 'Logistica', 'CristianSoldan@bbddrepair.com', 'c.soldan');

INSERT INTO cliente_tipo (tipo_cliente, tipo, descripcion) VALUES
(1, 'Externo', 'Empresa'),
(2, 'Interno', 'Tecnico');

INSERT INTO cliente_detalles (tipo_cliente, nombre_cliente, mail, telefono, direccion, contacto) VALUES
(1, 'AlmagroCell', 'AlmagroCell@gmail.com', 1164738973, 'Boedo 6353', 'Jose Luis Morales'),
(2, 'BalvaneraCelulares', 'BalvaneraCelulares@gmail.com', 1176846374, 'Azcuenaga 5372 - CABA', 'Malena Petri'),
(1, 'MicrocentoMovil', 'MicrocentoMovil@gmail.com', 1184749383, 'Florida 656 - CABA', 'Manuel Arias'),
(2, 'PalermoCueva', 'PalermoCueva@gmail.com', 1167836473, 'Armenia 345 - CABA', 'Pedro Lopez'),
(2, 'RecoletaCell', 'RecoletaCell@gmail.com', 1123764563, 'Parana 763 - CABA', 'Luciano Domingez'),
(2, 'DevotoCelulares', 'DevotoCelulares@gmail.com', 1190762453, 'Simbron 674 - CABA', 'Jose Garcia'),
(1, 'VillaUrquizaMobile', 'VillaUrquizaMobile@gmail.com', 1134768373, 'Olazabal 980 - CABA', 'Andres Martinez'),
(1, 'ZonaNorteCelus', 'ZonaNorteCelus@gmail.com', 1176843675, 'Maipu 3453 -Florida', 'Oscar Sanchez'),
(1, 'ZonaOesteMovil', 'ZonaOesteMovil@gmail.com', 1142648373, 'Arieta 1232 - San Justo', 'Alberto Fernandez'),
(1, 'ZonaSurCell', 'ZonaSurCell@gmail.com', 1187363534, 'Mitre 546 - Avellaneda', 'Isabel Contreras');


INSERT INTO proveedores (id_proveedor, nombre, mail, telefono, direccion, contacto) VALUES
(1, 'Samsung Argentina', 'samsung.repuesto@samsung.com', 1125678973, 'Bouchard 710', 'Leonardo Vazquez'),
(2, 'BGH Argentina', 'bgh.repuestos@bgh.com', 1135649876, 'Piedras 1270', 'Jose Perez'),
(3, 'ElevenParts', 'elevenpart@gmail.com', 1154672354, 'Larrea 1167', 'Pedro Garcia'),
(4, 'ConstitucionRepuestos', 'constitucionRepuestos@gmail.com', 1176894526, 'Brasil 980', 'Nahuel Martinez');





INSERT INTO pedidos (id_pedido, id_cliente, fecha_pedido, fecha_entrega, estado, valor) VALUES
(1, 1, '2024-11-19', '2024-11-19', 'PEN', 435500),
(2, 2, '2024-11-19', '2024-11-19', 'PEN', 435500),
(3, 3, '2024-11-19', '2024-11-19', 'PRO', 435500),
(4, 4, '2024-11-19', '2024-11-19', 'PEN', 435500),
(5, 5, '2024-11-19', '2024-11-19', 'PRO', 435500),
(6, 6, '2024-11-19', '2024-11-19', 'PEN', 435500),
(7, 7, '2024-11-19', '2024-11-19', 'DEV', 435500),
(8, 8, '2024-11-19', '2024-11-19', 'PEN', 435500),
(9, 9, '2024-11-19', '2024-11-19', 'PEN', 435500),
(10, 10, '2024-11-10', '2024-11-20', 'PRO', 31200);

INSERT INTO detalle_pedidos (id_detalle, id_pedido, id_cliente, fecha_pedido, fecha_entrega, estado, id_repuesto, cantidad_pedida, precio_venta) VALUES
(1, 10, 10, '2024-11-10', '2024-11-20', 'PendienteEntrega', 1, 5, 3900),
(2, 10, 10, '2024-11-10', '2024-11-20', 'PendienteEntrega', 10, 5, 3900),
(3, 9, 10, '2024-11-10', '2024-11-20', 'PendienteEntrega', 2, 5, 3900),
(4, 10, 10, '2024-11-10', '2024-11-20', 'PendienteEntrega', 11, 5, 3900),
(5, 10, 10, '2024-11-10', '2024-11-20', 'PendienteEntrega', 3, 5, 3900),
(6, 3, 10, '2024-11-10', '2024-11-20', 'PendienteEntrega', 12, 5, 3900),
(7, 10, 10, '2024-11-10', '2024-11-20', 'PendienteEntrega', 4, 5, 3900),
(8, 3, 10, '2024-11-10', '2024-11-20', 'PendienteEntrega', 13, 5, 3900),
(9, 4, 1, '2024-11-10', '2024-11-20', 'PendienteEntrega', 5, 5, 3900),
(10, 5, 1, '2024-11-10', '2024-11-20', 'PendienteEntrega', 14, 5, 3900);

INSERT INTO ordenes_de_compra (id_orden_compra, id_proveedor, fecha_emision, fecha_recepcion, estado, precio_orden) VALUES 
(1, 1, '2024-06-01', '2024-07-01', 'pendiente', 31500), 
(2, 4, '2024-06-01', '2024-07-01', 'completada', 719100), 
(3, 3, '2024-06-06', '2024-07-06', 'en proceso', 180000), 
(4, 2, '2024-07-01', '2024-07-15', 'completada', 2700000), 
(5, 5, '2024-11-01', '2024-12-01', 'cancelada', 719100), 
(6, 1, '2024-11-16', '2024-12-16', 'completada', 315000), 
(7, 2, '2024-11-16', '2024-12-16', 'cancelada', 2700000), 
(8, 3, '2024-11-16', '2024-12-01', 'cancelada', 180000);


INSERT INTO detalle_ordenes_compra (id_detalle, id_orden_compra, id_repuesto, cantidad, precio) VALUES
(1, 1, 1, 10, 35000),
(2, 1, 2, 10, 35000),
(3, 1, 3, 10, 35000),
(4, 2, 5, 25, 3500),
(5, 2, 10, 25, 3500),
(6, 2, 8, 25, 3000),
(7, 2, 9, 25, 28900),
(8, 2, 4, 25, 6500),
(9, 2, 6, 25, 3500);



INSERT INTO auditoria_inventario (id_auditoria, id_repuesto, ubicacion, cantidad_virtual, cantidad_fisica, diferencia, id_empleado, fecha_auditoria) VALUES
(1, 1, 'Rack01', 25, 25, 0, 1, '2012-11-01'),
(2, 10, 'Rack01', 14, 14, 0, 1, '2012-11-01'),
(3, 2, 'Rack01', 12, 12, 0, 1, '2012-11-01'),
(4, 5, 'Rack01', 20, 20, 0, 1, '2012-11-01'),
(5, 3, 'Rack01', 0, 0, 0, 1, '2012-11-01'),
(6, 5, 'Rack01', 8, 8, 0, 1, '2012-11-01'),
(17, 9, 'Rack01', 3, 3, 0, 1, '2012-11-01'),
(18, 4, 'Rack01', 0, 0, 0, 1, '2012-11-01'),
(19, 4, 'Rack02', 33, 33, 0, 2, '2012-11-01'),
(20, 10, 'Rack02', 35, 35, 0, 2, '2012-11-01'),
(21, 2, 'Rack02', 33, 33, 0, 2, '2012-11-01'),
(22, 3, 'Rack02', 0, 0, 0, 2, '2012-11-01');

INSERT INTO devoluciones (id_devolucion, id_pedido_compra, id_proveedor, id_repuesto, cantidad, fecha_devolucion, estado, id_motivo_devolucion) VALUES
(1, 2, 4, 4, 2, '2024-11-15', 'ENVIADO', 1),
(2, 2, 4, 10, 3, '2024-11-15', 'ENVIADO', 4),
(3, 2, 4, 5, 4, '2024-11-15', 'ENVIADO', 3),
(4, 3, 3, 1, 2, '2024-11-15', 'ENVIADO', 5),
(5, 3, 3, 5, 1, '2024-11-15', 'ENVIADO', 5),
(6, 3, 3, 4, 9, '2024-11-15', 'ENVIADO', 4),
(7, 4, 2, 8, 10, '2024-11-25', 'PENDIENTE', 2),
(8, 4, 2, 9, 6, '2024-11-25', 'PENDIENTE', 2),
(9, 4, 2, 3, 7, '2024-11-25', 'PENDIENTE', 1);

INSERT INTO motivo_devoluciones (id_motivo, descripcion) VALUES
(1, 'Fallo Funcional'),
(2, 'Rotura'),
(3, 'Obsoleto'),
(4, 'Devolucion en Garantia'),
(5, 'Error en el envío del proveedor');

INSERT INTO entradas_inventario (id_entrada, id_orden_compra, id_repuesto, cantidad_recibida, fecha_recepcion, empleado_recibe, origen) VALUES
(1, 1, 5, 10, '2024-07-01', 4, 1),
(2, 1, 1, 10, '2024-07-01', 4, 1),
(3, 1, 4, 10, '2024-07-01', 4, 1),
(4, 1, 9, 10, '2024-07-01', 4, 1),
(9, 1, 8, 10, '2024-07-01', 4, 1),
(10, 2, 2, 25, '2024-07-01', 4, 4),
(15, 2, 1, 25, '2024-07-01', 4, 4);

INSERT INTO salidas_inventario (id_salida, id_pedido, id_repuesto, cantidad_entregada, fecha_salida, empleado_entrega, recepcion, precio_venta) VALUES
(1, 1, 5, 5, '2024-11-01', 6, 1, 390000),
(2, 3, 1, 4, '2024-11-01', 6, 1, 6500),
(3, 9, 4, 6, '2024-11-01', 6, 1, 6500),
(4, 10, 9, 8, '2024-11-01', 6, 1, 3900),
(5, 8, 8, 4, '2024-11-01', 7, 2, 3900),
(6, 6, 2, 3, '2024-11-01', 7, 2, 8450),
(7, 5, 1, 2, '2024-11-01', 7, 2, 8450);
