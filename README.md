# LEGO
Project Lego
El proyecto de fin de modulo consiste en al elaboración de 3 grandes productos:

1) Modelo de Base de Datos Relacional

  - Elaborar del modelo entidad-relación del proyecto de Seguridad Industrial especificado en el modulo "Gestión de Procesos de Desarrollo de Software"
 - Incluir en el modelo el o las estructuras necesarias para el almacenamiento de la información de inicio de sesión del usuario (login)
- La información sensible deberá estar encriptada (la contraseña de usuario no puede ser texto plano)
- Incluir en el modelo el o las estructuras necesarias para realizar la auditoria de datos importantes en la base de datos (no es necesario auditar todas las tablas ni todas las columnas, solo la información mas relevante para el negocio) 
- Elaborar el script de creación del esquema de bases de datos (el script debe incluir también funciones y/o procedimientos almacenados con la lógica de negocio)
- Elaborar el script de inicializacion de datos de los "catálogos"
- ver ejemplo "03 School Database Sample" para una guia de elaboracion

2) Modelo de Deposito de Datos (Datawarehouse - Modelo Estrella)

 - Utilizando el modelo anterior se pide elaborar el deposito de datos correspondiente (modelo estrella)
- Desnormalizar el modelo anterior de acuerdo a sus necesidades de reportes de usuario final (ver ejemplo de School y SchoolDW)
- Elaborar el script de creación de esquema de bases de datos
- Implementar los indices necesarios que optimicen el rendimiento de sus consultas
- Implementar las estructuras necesarias que permitan la integración de datos del modelo anterior y del nuevo modelo (elaborar el ETL basado en procedimientos almacenados) 
- ver ejemplo "05 Integración de Datos" para una guia de elaboracion

3) Modelo de Seguridad

- Separar su modelo de base de datos del punto 1) en un modelo de 2 capas. Una capa de datos y otra capa de código (ver el ejemplo SchoolData y SchoolCode)
- Implementar todas las estructuras necesarias para la creación de ambos modelos (Script de creación de esquema de ambos modelos)
- Crear 2 tipos de roles. Un usuario de Servicio con el rol de escritura y otro usuario de reportes con el rol de lectura únicamente
- ver ejemplo "06 Modelo de Seguridad" para una guia de elaboracion
