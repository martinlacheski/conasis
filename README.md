# ConAsis

Sistema de Control de Asistencia del Personal

Desarrollo de la Primera y Segunda Iteración planificada, que consta de la parametrización del Sistema.

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

Dentro de la Carpeta "app", se encuentra la Carpeta "files", dentro de la misma se encuentra un Backup de la BD.

Crear una BD llamada conasis, en Postgresql 12 y realizar el proceso de reestablecer el BACKUP.

Fijarse en el archivo settings.py en la siguiente ruta:

app/config/settings.py

completar en el siguiente apartado con lo que corresponda:

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'conasis',
        'USER': 'postgres',
        'PASSWORD': 'postgres',
        'HOST': 'localhost',
        'PORT': '5432',
    }
}


ENTORNO VIRTUAL del Proyecto

Crear un entorno virtual al nivel de la carpeta app con el siguiente comando:

python3 -m venv venv

Luego acceder a "RAIZ Proyecto"/venv/bin y ejecutar:

source bin/ activate  #Para activar el entorno virtual
  

LIBRERIAS NECESARIAS del Proyecto

Luego ejecutar lo siguiente para instalar las librerias necesarias:

pip install django 				        #Para instalar django en el entorno virtual			
pip install psycopg2-binary       #Para poder conectarnos con la Base de Datos 
pip install django-widget-tweaks  #Libreria necesaria para el proyecto.

Otra alternativa es en vez de ejecutar lo anterior, podemos ejecutar el comando siguiente despues de activado el entorno virtual:

accedemos a la carpeta app/

ejecutamos: 

pip install -r requirements.txt


EJECUTAR EL PROYECTO

Ejecutar el siguiente comando:

Ubicarse dentro de la carpeta app/

Ejecutar: 

python3 manage.py runserver

Luego acceder a:

http://127.0.0.1:8000


Para poder usar el proyecto en modo SUPERUSER ingresar con el siguiente usuario y contraseña:

Usuario: superusuario
Contraseña: conasis

Para poder usar el proyecto en modo Encargado (sin acceso a la parte de USUARIOS) ingresar con el siguiente usuario y contraseña:

Usuario: encargado
Contraseña: conasis

El proyecto fue realizado con las siguiente tecnologías:

Python 3.8.5 -- Django 3.2.4 -- PostgreSQL 12.6
