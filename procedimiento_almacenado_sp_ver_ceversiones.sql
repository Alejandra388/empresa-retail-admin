-- 1. Crear el procedimiento almacenado
DELIMITER //

CREATE PROCEDURE sp_ver_conversiones()
BEGIN
    -- Consulta de auditoría 
    SELECT * FROM conversion;
END//

DELIMITER ;

-- 2. Otorgar el permiso para ejecutar el procedimiento almacenado
GRANT EXECUTE ON PROCEDURE `empresa-retail-db`.sp_ver_conversiones TO 'marta_auditoria'@'localhost';


-- 3. Aplicar los cambios
