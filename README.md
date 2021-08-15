# utn-devops

Consigna
El objetivo de esta práctica es generar dos contenedores en Docker, los cuales uno 
tendrá el servidor web y la instalación de las dependencias necesarias para ejecutar 
la aplicación y el segundo tendrá una base de datos. Se debe poder realizar una 
petición al puerto 8080 desde la máquina host y los contenedores deben devolver la 
petición al usuario con algún contenido de la base de datos
Se deberá completar lo siguiente:
● Los archivos de infraestructura deben estar versionados en un branch con el 
	nombre “unidad-2-docker”, se debe crear a partir de los últimos cambios del 
	branch “unidad-1-vagant”. Proyecto “utn-devops”.
● El script de aprovisionamiento de Vagrant debe realizar lo siguiente:
	○ Desinstalar el software instalado de la práctica anterior.
	○ Instalar Docker.
	○ Descargar el código de la aplicación dentro de Ubuntu para que el 
servicio web lo presente.
● Crear un contenedor con un servidor web y que dentro tenga mapeado el 
	código de la aplicación que debe mostrar. Este contenedor debe poder acceder 
	a la base de datos.
● Crear un contenedor con una base de datos y almacenar algún tipo de 
	contenido de manera persistente (utilizar volúmenes). 