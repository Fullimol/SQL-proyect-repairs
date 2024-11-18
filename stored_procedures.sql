use proyecto_repair;

/*agregar un nuevo repuesto*/
DELIMITER //
CREATE PROCEDURE InsertarRepuesto (
    IN p_referencia VARCHAR(100),
    IN p_modelo VARCHAR(100),
    IN p_categoria VARCHAR(100),
    IN p_descripcion VARCHAR(100),
    IN p_precio INT,
    IN p_precio_venta_sugerido INT,
    IN p_cantidadStock INT,
    IN p_ubicacion VARCHAR(100)
)
BEGIN
    DECLARE last_insert_id INT;
    INSERT INTO catalogo (referencia, modelo, categoria, descripcion, precio, precio_venta_sugerido)
    VALUES (p_referencia, p_modelo, p_categoria, p_descripcion, p_precio, p_precio_venta_sugerido);
    SET last_insert_id = LAST_INSERT_ID();
    INSERT INTO inventario (id_repuesto, cantidad, ubicacion)
    VALUES (last_insert_id, p_cantidadStock, p_ubicacion);
END //
DELIMITER ;


/*Actualizar un repuesto*/
DELIMITER //
CREATE PROCEDURE ActualizarRepuesto (
    IN p_id_repuesto INT,
    IN p_referencia VARCHAR(100),
    IN p_modelo VARCHAR(100),
    IN p_categoria VARCHAR(100),
    IN p_descripcion VARCHAR(100),
    IN p_precio INT,
    IN p_precio_venta_sugerido INT
)
BEGIN
    UPDATE catalogo
    SET 
        referencia = p_referencia,
        modelo = p_modelo,
        categoria = p_categoria,
        descripcion = p_descripcion,
        precio = p_precio,
        precio_venta_sugerido = p_precio_venta_sugerido
    WHERE id_repuesto = p_id_repuesto;
END //
DELIMITER ;

/*Eliminar un repuesto existente*/
DELIMITER //
CREATE PROCEDURE EliminarRepuesto (
    IN p_id_repuesto INT
)
BEGIN
    DELETE FROM inventario WHERE id_repuesto = p_id_repuesto;
    DELETE FROM catalogo WHERE id_repuesto = p_id_repuesto;
END //
DELIMITER ;

/*              LLAMADAS DE EJEMPLOS:               */
CALL InsertarRepuesto(
    'REF00001',
    'ModeloX', 
    'CategoríaY',
    'Descripción del repuesto',
    5000,
    6000, 
    50,
    'Rack08' 
);

CALL ActualizarRepuesto(
    1, 
    'ALA00009',
    'A73', 
    'Audio', 
    'Altavoz Mejorado', 
    3200, 
    4100 
);

