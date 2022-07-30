El objetivo de este repositorio es levantar mediante docker un programa de analisis de texto.
El texto a analizar se encuentra en la carpeta text. Para modificar el texto es necesario modificar el contenido del archivo text.txt sin modificar el nombre del mismo.
Los scripts de bash que se ejecutan se encuentran en la carpeta scripts, es posible elegir entre distintas opciones de analisis mediante un menu de seleccion.

Para poder ejecutar el programa es necesario tener instalado Docker y ejecutar los siguientes comandos dentro del repositorio: 

  $ docker build --tag analisis_texto_image . #crea la imagen docker con el tag "analisis_texto_image"

  $ docker run -it --name analisis_texto analisis_texto_image
