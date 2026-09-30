-- prubas de lo que si tiene permisos el usuario pedro 

-- Gestionar campañas tiene permisos de lectura y escritura 
SELECT * FROM campania;

-- Insertar una nueva campaña 
INSERT INTO campania (cam_nombre, cam_presupuesto, cam_fecha_inicio, cam_fecha_final, canal_can_id_canal) 
VALUES ('Campaña Verano', 1500000.00, '2026-10-01', '2026-10-31', 1);
-- Ver la lista de clientes tiene Permiso de solo lectura
SELECT * FROM cliente;

-- Pruebas de lo que no tiene permiso de hacer el usuario Pedro 

-- Intentar insertar un cliente nuevo no tiene permiso 
INSERT INTO cliente (cli_nombre, cli_apellido, cli_correo, cli_telefono, cli_ciudad, cli_fecha_registro) 
VALUES ('Error', 'Pedro', 'error@email.com', '3000000000', 'Popayán', '2026-09-30');


-- Intentar borrar un cliente no tiene permisos 
DELETE FROM cliente WHERE cli_id_cliente = 1;
