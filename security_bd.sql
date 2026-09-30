-- ========================================================
-- CONFIGURACIÓN DE ROLES Y USUARIOS (RBAC) - EMPRESA RETAIL DB
-- ========================================================


-- 1. USUARIO ANA (CRM)
-- Creacion de usuario y Contraseña requerida y permisos de Lectura y Escritura en Clientes e Interacciones
CREATE USER 'ana_crm'@'localhost' IDENTIFIED BY 'Retail2026!Caja';

GRANT SELECT, INSERT, UPDATE, DELETE ON `empresa-retail-db`.cliente TO 'ana_crm'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON `empresa-retail-db`.interaccion TO 'ana_crm'@'localhost';
FLUSH PRIVILEGES;


-- 2. USUARIO PEDRO (Marketing)
-- Creacion de usuario y Contraseña requerida, permisos de Lectura y Escritura en Canales y Campañas, y solo lectura en Clientes
CREATE USER 'pedro_mkt'@'localhost' IDENTIFIED BY 'Retail2026!Stock';

GRANT SELECT, INSERT, UPDATE, DELETE ON `empresa-retail-db`.canal TO 'pedro_mkt'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON `empresa-retail-db`.campania TO 'pedro_mkt'@'localhost';
GRANT SELECT ON `empresa-retail-db`.cliente TO 'pedro_mkt'@'localhost';


-- 3. USUARIO MARTA (Auditoría)
-- Contraseña requerida, solo ver Conversiones y uso de procedimientos almacenados de consulta
CREATE USER 'marta_auditoria'@'localhost' IDENTIFIED BY 'Retail2026!Admin';

GRANT SELECT ON `empresa-retail-db`.conversion TO 'marta_auditoria'@'localhost';
GRANT EXECUTE ON `empresa-retail-db`.* TO 'marta_auditoria'@'localhost';


-- 4. APLICAR CAMBIOS
FLUSH PRIVILEGES;
