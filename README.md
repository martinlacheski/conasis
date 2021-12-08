# Aplicación en Django - Docker - Docker BD PostgreSQL 

#Sistema de Control de Asistencia del Personal

El proyecto fue desarrollado en el lenguaje Python, se utilizo el Framework Django para ello. 

Ademas se utilizo Bootstrap para el FrontEnd, javascript y librerias adicionales como datatables, select2, jquery ui, jquery confirm y sweetalert2.

Por ultimo, se implemento Docker para poder generar un contenedor con el proyecto, instalando las librerias necesarias para ejecutar el mismo, y tambien se utilizo un contenedor con la imagen de PostgreSQL. Se intercomunicaron ambos contenedores para que se pueda ejecutar el proyecto.

Desarrollo de la Primera y Segunda Iteración planificada, que consta de modulos que pertenecen a la parametrización del Sistema.

Modulos:
  INICIO y CIERRE DE SESION
  CRUD Usuarios
  CRUD Tipos de Usuarios
  CRUD Paises
  CRUD Provincias
  CRUD Localidades
  CRUD Tipos de Documentos
  CRUD Sexos
  CRUD Estados
  CRUD Tarjetas
  
  
BASE DE DATOS: 

Para el desarrollo del proyecto se utilizo el motor de base de datos PostgreSQL 12

#EJECUTAR EL PROYECTO

Para Sistemas Operativos Linux, ejecutar los siguientes comandos para descargar Docker y Docker Compose:

sudo apt install docker

sudo apt install docker-compose

Para Sistemas Operativos Windows y Mac, descargar el programa Docker Desktop desde:

https://www.docker.com/products/docker-desktop

Descargar el proyecto completo de Github

ubicarse dentro del mismo, donde se encuentran los archivos Dockerfile y docker-compose.yml

#Ejecutar los siguientes comandos:

sudo docker-compose run web

Construye el proyecto, y debemos crear un superusuario para poder ejecutar el mismo.

Luego, una vez que finaliza de ejecutarse, presionar CTRL + C para detener la ejecucion

#Ejecutar:

sudo docker-compose up

Luego acceder a:

http://127.0.0.1:8000

Ingresar con el usuario y contraseña creado.
