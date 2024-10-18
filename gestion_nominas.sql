/* Delimitador cambiado a ; */
/* Conectando a 127.0.0.1 por MariaDB or MySQL (TCP/IP), usuario root, usando contraseña: Yes ... */
SELECT CONNECTION_ID();
SHOW VARIABLES;
/* Juego de caracteres: utf8mb4 */
SHOW /*!50002 GLOBAL */ STATUS;
SELECT NOW();
/* Conectado. ID de Hilo: 3 */
/* Reading function definitions from C:\Program Files (x86)\Common Files\MariaDBShared\HeidiSQL\functions-mariadb.ini */
SHOW TABLES FROM `information_schema`;
SHOW DATABASES;
SHOW OPEN TABLES FROM bbddcrudjava WHERE `in_use`!=0;
USE `bbddcrudjava`;
/* Entrando a la sesión "Unnamed" */
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='bbddcrudjava';
SHOW TABLE STATUS FROM `bbddcrudjava`;
SHOW FUNCTION STATUS WHERE `Db`='bbddcrudjava';
SHOW PROCEDURE STATUS WHERE `Db`='bbddcrudjava';
SHOW TRIGGERS FROM `bbddcrudjava`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='bbddcrudjava';
/* Cargando archivo "C:\Users\usuario\AppData\Roaming\HeidiSQL\Backups\query-tab-2024-09-27_13-04-41-602.sql" (84 B) en pestaña de consulta #1 */
/*  Escalando controles a DPI de pantalla: 100% */
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='gestion_nominas';
SHOW TABLE STATUS FROM `gestion_nominas`;
SHOW FUNCTION STATUS WHERE `Db`='gestion_nominas';
SHOW PROCEDURE STATUS WHERE `Db`='gestion_nominas';
SHOW TRIGGERS FROM `gestion_nominas`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='gestion_nominas';
USE `gestion_nominas`;
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='gestion_nominas' AND TABLE_NAME='empleados' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `empleados` FROM `gestion_nominas`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='gestion_nominas'   AND TABLE_NAME='empleados'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='gestion_nominas'   AND TABLE_NAME='empleados'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW ENGINES;
SHOW COLLATION;
SHOW CREATE TABLE `gestion_nominas`.`empleados`;
SELECT CONSTRAINT_NAME, CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` WHERE CONSTRAINT_SCHEMA='gestion_nominas' AND TABLE_NAME='empleados';
SELECT * FROM `gestion_nominas`.`empleados` LIMIT 1000;
/* Conexión a 127.0.0.1 cerrada en 2024-10-17 08:17:16 */
/* Conectando a 127.0.0.1 por MariaDB or MySQL (TCP/IP), usuario root, usando contraseña: Yes ... */
SELECT CONNECTION_ID();
SHOW VARIABLES;
/* Juego de caracteres: utf8mb4 */
SHOW /*!50002 GLOBAL */ STATUS;
SELECT NOW();
/* Conectado. ID de Hilo: 46 */
USE `gestion_nominas`;
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='gestion_nominas' AND TABLE_NAME='categoria' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `categoria` FROM `gestion_nominas`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='gestion_nominas'   AND TABLE_NAME='categoria'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='gestion_nominas'   AND TABLE_NAME='categoria'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW ENGINES;
SHOW COLLATION;
SHOW CREATE TABLE `gestion_nominas`.`categoria`;
SELECT CONSTRAINT_NAME, CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` WHERE CONSTRAINT_SCHEMA='gestion_nominas' AND TABLE_NAME='categoria';
/* Reading function definitions from C:\Program Files (x86)\Common Files\MariaDBShared\HeidiSQL\functions-mariadb.ini */
SHOW TABLES FROM `information_schema`;
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='gestion_nominas' AND TABLE_NAME='categoria' ORDER BY ORDINAL_POSITION;
SHOW CREATE TABLE `gestion_nominas`.`categoria`;
SELECT * FROM `gestion_nominas`.`categoria` LIMIT 1000;
SHOW CREATE TABLE `gestion_nominas`.`empleados`;
USE `mysql`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='mysql';
SHOW TABLE STATUS FROM `mysql`;
SHOW FUNCTION STATUS WHERE `Db`='mysql';
SHOW PROCEDURE STATUS WHERE `Db`='mysql';
SHOW TRIGGERS FROM `mysql`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='mysql';
USE `gestion_nominas`;
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='gestion_nominas' AND TABLE_NAME='empleados' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `empleados` FROM `gestion_nominas`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='gestion_nominas'   AND TABLE_NAME='empleados'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='gestion_nominas'   AND TABLE_NAME='empleados'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `gestion_nominas`.`empleados`;
SELECT CONSTRAINT_NAME, CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` WHERE CONSTRAINT_SCHEMA='gestion_nominas' AND TABLE_NAME='empleados';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='gestion_nominas' AND TABLE_NAME='nominas' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `nominas` FROM `gestion_nominas`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='gestion_nominas'   AND TABLE_NAME='nominas'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='gestion_nominas'   AND TABLE_NAME='nominas'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `gestion_nominas`.`nominas`;
SELECT CONSTRAINT_NAME, CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` WHERE CONSTRAINT_SCHEMA='gestion_nominas' AND TABLE_NAME='nominas';
USE `mysql`;
USE `gestion_nominas`;
SHOW CREATE TABLE `gestion_nominas`.`nominas`;
SHOW CREATE TABLE `gestion_nominas`.`empleados`;
SHOW CREATE TABLE `gestion_nominas`.`nominas`;
SHOW CREATE TABLE `gestion_nominas`.`empleados`;
SELECT * FROM `gestion_nominas`.`empleados` LIMIT 1000;
/* Conexión a 127.0.0.1 cerrada en 2024-10-18 08:19:08 */
/* Conectando a 127.0.0.1 por MariaDB or MySQL (TCP/IP), usuario root, usando contraseña: Yes ... */
SELECT CONNECTION_ID();
SHOW VARIABLES;
/* Juego de caracteres: utf8mb4 */
SHOW /*!50002 GLOBAL */ STATUS;
SELECT NOW();
/* Conectado. ID de Hilo: 194 */
USE `gestion_nominas`;
SHOW ENGINES;
SHOW COLLATION;
SHOW CREATE TABLE `gestion_nominas`.`empleados`;
/* Reading function definitions from C:\Program Files (x86)\Common Files\MariaDBShared\HeidiSQL\functions-mariadb.ini */
SHOW TABLES FROM `information_schema`;
SELECT * FROM `gestion_nominas`.`empleados` LIMIT 1000;
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='gestion_nominas' AND TABLE_NAME='categoria' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `categoria` FROM `gestion_nominas`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='gestion_nominas'   AND TABLE_NAME='categoria'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='gestion_nominas'   AND TABLE_NAME='categoria'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `gestion_nominas`.`categoria`;
SELECT CONSTRAINT_NAME, CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` WHERE CONSTRAINT_SCHEMA='gestion_nominas' AND TABLE_NAME='categoria';
SELECT * FROM `gestion_nominas`.`categoria` LIMIT 1000;
SHOW CREATE TABLE `gestion_nominas`.`nominas`;
SELECT * FROM `gestion_nominas`.`nominas` ORDER BY `dni` DESC LIMIT 1000;
SELECT `dni`, LEFT(`nombre`, 256) FROM `gestion_nominas`.`empleados` GROUP BY `dni`, `nombre` ORDER BY `nombre` LIMIT 10000;
SHOW CHARSET;
SELECT 'gestion_nominas' AS `Database`, 'categoria' AS `Table`, 10 AS `Rows`, 0 AS `Duration`;
/*!40101 SET @OLD_LOCAL_SQL_MODE=@@SQL_MODE, SQL_MODE='' */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
SHOW CREATE DATABASE `gestion_nominas`;
SHOW CREATE TABLE `gestion_nominas`.`categoria`;
SELECT 'gestion_nominas' AS `Database`, 'empleados' AS `Table`, 5 AS `Rows`, 0 AS `Duration`;
SHOW CREATE DATABASE `gestion_nominas`;
SHOW CREATE TABLE `gestion_nominas`.`empleados`;
SELECT 'gestion_nominas' AS `Database`, 'nominas' AS `Table`, 5 AS `Rows`, 0 AS `Duration`;
SHOW CREATE DATABASE `gestion_nominas`;
SHOW CREATE TABLE `gestion_nominas`.`nominas`;
/*!40101 SET SQL_MODE=IFNULL(@OLD_LOCAL_SQL_MODE, '') */;
/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
SELECT 'gestion_nominas' AS `Database`, 'categoria' AS `Table`, 10 AS `Rows`, 0 AS `Duration`;
/*!40101 SET @OLD_LOCAL_SQL_MODE=@@SQL_MODE, SQL_MODE='' */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
SHOW CREATE DATABASE `gestion_nominas`;
SELECT 'gestion_nominas' AS `Database`, 'empleados' AS `Table`, 5 AS `Rows`, 0 AS `Duration`;
SHOW CREATE DATABASE `gestion_nominas`;
SELECT 'gestion_nominas' AS `Database`, 'nominas' AS `Table`, 5 AS `Rows`, 0 AS `Duration`;
SHOW CREATE DATABASE `gestion_nominas`;
/*!40101 SET SQL_MODE=IFNULL(@OLD_LOCAL_SQL_MODE, '') */;
/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
SELECT 'gestion_nominas' AS `Database`, 'categoria' AS `Table`, 10 AS `Rows`, 0 AS `Duration`;
/*!40101 SET @OLD_LOCAL_SQL_MODE=@@SQL_MODE, SQL_MODE='' */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
SHOW CREATE DATABASE `gestion_nominas`;
SELECT 'gestion_nominas' AS `Database`, 'empleados' AS `Table`, 5 AS `Rows`, 0 AS `Duration`;
SHOW CREATE DATABASE `gestion_nominas`;
SELECT 'gestion_nominas' AS `Database`, 'nominas' AS `Table`, 5 AS `Rows`, 0 AS `Duration`;
SHOW CREATE DATABASE `gestion_nominas`;
/*!40101 SET SQL_MODE=IFNULL(@OLD_LOCAL_SQL_MODE, '') */;
/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;