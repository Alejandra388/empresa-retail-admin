
-- 1. PRUEBAS PERMITIDAS (Lo que Marta SÍ puede hacer)

--  Ver directamente la tabla de conversiones (Permiso de lectura / SELECT otorgado)
SELECT * FROM conversion;

-- Ejecutar el procedimiento almacenado de consulta que creamos para auditoría
CALL sp_ver_conversiones();

-- 2. PRUEBAS PROHIBIDAS (Lo que Marta NO debe poder hacer)

-- Intentar consultar otras tablas restringidas (Como clientes o campañas)
SELECT * FROM cliente;
SELECT * FROM campania;

-- Intentar insertar, modificar o borrar datos en cualquier tabla
INSERT INTO conversion (con_tipo, con_valor, con_fecha, cliente_cli_id_cliente) VALUES ('Compra', 50000.00, '2026-09-30', 1);
UPDATE cliente 
SET cli_ciudad = 'Cali' 
WHERE cli_correo = 'ana.gomez@email.com';

DELETE FROM cliente WHERE cli_id_cliente = 1;
