use proyecto_repair;

/*Insertar un nuevo repuesto:*/
DELIMITER //
CREATE PROCEDURE InsertarRepuesto (
    IN p_nombre VARCHAR(100),
    IN p_descripcion VARCHAR(100),
    IN p_precio INT,
    IN p_cantidadStock INT
)
BEGIN
    INSERT INTO repuestos (nombre, descripcion, precio, cantidadStock)
    VALUES (p_nombre, p_descripcion, p_precio, p_cantidadStock);
END //
DELIMITER ;


/*Actualizar el precio de un repuesto*/
DELIMITER //
CREATE PROCEDURE ActualizarPrecioRepuesto (
    IN p_idrepuesto INT,
    IN p_precio INT
)
BEGIN
    UPDATE repuestos
    SET precio = p_precio
    WHERE idrepuesto = p_idrepuesto;
END //
DELIMITER ;

/*Insertar nuevo pedido*/
/*
DELIMITER //
CREATE PROCEDURE InsertarPedido (
    IN p_fecha DATE,
    IN p_idproveedor INT,
    IN p_estado CHAR(3)
)
BEGIN
    INSERT INTO pedidos (fecha, idproveedor, estado)
    VALUES (p_fecha, p_idproveedor, p_estado);
END //
DELIMITER ;
*/

/*Cantidad de pedidos totales*/
DELIMITER //
CREATE PROCEDURE getCantidadPedidos ()
BEGIN
    SELECT COUNT(*) AS total_pedidos FROM pedidos;
END //
DELIMITER ;


/******************SIMULAR llamadas a los procesos*************************/
CALL InsertarRepuesto('Repuesto1', 'Descripción del Repuesto1', 100, 50);
CALL ActualizarPrecioRepuesto(1, 150);
/*CALL InsertarPedido('2023-11-17', 2, 'PEN');*/
CALL getCantidadPedidos();