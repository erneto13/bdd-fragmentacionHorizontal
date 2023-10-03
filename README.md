# bdd-fragmentacionHorizontal
Guía para implementar la fragmentación horizontal en una base de datos SQL Server utilizando dos PC's en la misma red local. La fragmentación horizontal es una técnica esencial para distribuir eficientemente datos a lo largo de múltiples dispositivos y mejorar la escalabilidad y el rendimiento de las aplicaciones.

## 📖 Requisitos

- Dos computadoras con SQL Server instalado.
- Acceso a ambas computadoras y permisos de administrador.
- Una red que permita la comunicación entre las dos computadoras.

## 📜 Paso a paso

**Paso 1**: Configurar las computadoras
Asegúrate de que ambas computadoras estén configuradas y tengan SQL Server instalado y funcionando correctamente. Puedes utilizar SQL Server Management Studio (SSMS) para administrar las bases de datos.

**Paso 2**: Crear una base de datos
En una de las computadoras, crea una base de datos en la que deseas realizar la fragmentación horizontal. Puedes hacerlo a través de SSMS o ejecutando una consulta SQL similar a la siguiente:
```sql
`CREATE DATABASE MiBaseDeDatos;`
```
**Paso 3**: Crear una tabla
Dentro de la base de datos, crea una tabla que deseas fragmentar. Por ejemplo:
```sql
USE MiBaseDeDatos;
CREATE TABLE MiTabla (
    ID INT PRIMARY KEY,
    Nombre NVARCHAR(50),
    Edad INT
);
```

> También puedes usar el [ejemplo](https://github.com/erneto13/bdd-fragmentacionHorizontal/blob/main/tablas/tabla-ejemplo.sql) que viene el el repositorio.

**Paso 4**: Insertar datos
Inserta algunos datos en la tabla para tener información con la que trabajar:
```sql
INSERT INTO MiTabla (ID, Nombre, Edad) VALUES
(1, 'Juan', 30),
(2, 'Ana', 25),
(3, 'Pedro', 35),
(4, 'María', 28);
```

**Paso 5**: Conectarse a la misma red
Las 2 computadoras deben estar conectadas a la misma red. Puedes crear la red desde un teléfono móvil o desde una de las 2 computadoras. En internet hay muchísimos tutoriales de como realizar una red de manera muy sencilla.

**Paso 6**: Verificiar la red
Una manera sencilla de saber si las 2 computadoras estan en la misma red es haciendo *ping*. A continuación un pequeño tutorial:

  1. Abre una ventana de línea de comandos.
     Presiona la tecla Windows + R, escribe "cmd" y pulsa Enter.
  2. En la ventana de línea de comandos, escribe el siguiente comando:
     
     ```css
     ipconfig
     ```
     Debes deslizarte hasta abajo del todo y buscar una línea llamada **Dirección IPv4** esta será tu IP.
  4. En la ventana de línea de comandos, escribe el siguiente comando:
     ```css
     ping [Dirección IP o nombre de host]
     ```
     Sustituye **[Dirección IP o nombre de host]** por la dirección IP o el nombre de host de la otra computadora a la que deseas hacer ping.
  5. Presiona Enter.
     El comando "ping" enviará una serie de paquetes ICMP a la computadora de destino y mostrará la respuesta, así como el tiempo que tarda en recibir una respuesta.

Para hacer ping a otra computadora en una red, debes conocer su dirección IP y asegurarte de que ambas computadoras estén en la misma red y que no haya bloqueos de firewall que impidan las respuestas a los paquetes.


# Luego le sigo, ya me dio flojera
