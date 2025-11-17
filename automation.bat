@ECHO OFF
REM Archivo Batch para automatizar las pruebas de la base de datos

SET MYSQL_USER=root
SET MYSQL_PASS=241410
SET MYSQL_BIN="C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe"
SET DATABASE_RESET_SCRIPT="D:\CETI\Cuarto\BasesDeDatosI\Repos\control-de-inventarios-r&d\01_DDL_Schema\reset.sql"
SET DATABASE_SCHEMA="D:\CETI\Cuarto\BasesDeDatosI\Repos\control-de-inventarios-r&d\01_DDL_Schema\01_ddl_esquema_inventario.sql"
SET DATABASE_CATALOG_SCRIPT="D:\CETI\Cuarto\BasesDeDatosI\Repos\control-de-inventarios-r&d\02_DML_Data\02_dml_datos_catalogo.sql"
SET DATABASE_CATALOG_QUERY_SCRIPT="D:\CETI\Cuarto\BasesDeDatosI\Repos\control-de-inventarios-r&d\03_Reports_Queries\03_query_mostrar_catalogos.sql"
SET DATABASE_TRANSACTIONAL_SCRIPT="D:\CETI\Cuarto\BasesDeDatosI\Repos\control-de-inventarios-r&d\02_DML_Data\02_dml_datos_transaccionales.sql"
SET DATABASE_QUERY_ALL_SCRIPT="D:\CETI\Cuarto\BasesDeDatosI\Repos\control-de-inventarios-r&d\03_Reports_Queries\03_all_tables.sql"

REM Borrar la base de datos existente 
ECHO Paso 1: Reiniciando la base de datos..
%MYSQL_BIN% -u%MYSQL_USER% -p%MYSQL_PASS% < %DATABASE_RESET_SCRIPT%

REM Cargar la base de datos. 
ECHO Paso 2: Cargando la nueva base de datos..
%MYSQL_BIN% -u%MYSQL_USER% -p%MYSQL_PASS% < %DATABASE_SCHEMA%

REM Cargar datos de catálogo. 
ECHO Paso 3: Cargando datos de catalogo..
%MYSQL_BIN% -u%MYSQL_USER% -p%MYSQL_PASS% < %DATABASE_CATALOG_SCRIPT%

REM Mostrar datos de catálogo
ECHO Paso 4: Mostrar datos de catalogo
%MYSQL_BIN% -u%MYSQL_USER% -p%MYSQL_PASS% < %DATABASE_CATALOG_QUERY_SCRIPT%

REM Cargar datos transaccionales
ECHO Paso 5: Cargando datos transaccionales...
%MYSQL_BIN% -u%MYSQL_USER% -p%MYSQL_PASS% < %DATABASE_TRANSACTIONAL_SCRIPT%

REM Mostrar todas las tablas
ECHO Paso 6: Mostrando todas las tablas...
%MYSQL_BIN% -u%MYSQL_USER% -p%MYSQL_PASS% < %DATABASE_QUERY_ALL_SCRIPT%


IF %ERRORLEVEL% NEQ 0 (
    ECHO.
    ECHO ERROR: Hubo un fallo al ejecutar el script.
) ELSE (
    ECHO.
    ECHO Exito! La base de datos ha sido creada y poblada.
)

PAUSE