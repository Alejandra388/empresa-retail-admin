-- Validacion de usuario ana 
SELECT * FROM cliente;

INSERT INTO cliente (cli_nombre, cli_apellido, cli_correo, cli_telefono, cli_ciudad, cli_fecha_registro) 
VALUES ('Ana', 'Munoz', 'Ana.munoz@email.com', '3001234567', 'Bogotá', '2026-09-30');

-- no tiene permiso

DELETE FROM conversion;
