#Imagen principal Ubuntu.
FROM ubuntu:latest

#Agregar los scripts necesarios y dar permisos de ejecucion.
ADD ./scripts /scripts
RUN chmod +x /scripts/main.sh

#Agregamos el archivo de texto para analizar.
ADD ./text /text

#Ejecutamos el script principal.
CMD /scripts/main.sh
